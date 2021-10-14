import 'package:dartz/dartz.dart' as dartz;
import 'package:el_digital_de_albacete/ExtraWidgets/error_placeholder.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/fading_circle.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/news_card.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_news_list_specific_page.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:flutter/material.dart';

class NewsCards extends StatefulWidget {
  final SpiderNewsListSpecificPage spiderPage;
  final Function(String) onDetails;

  const NewsCards({required this.spiderPage, Key? key, required this.onDetails})
      : super(key: key);

  @override
  NewsCardsState createState() => NewsCardsState();
}

class NewsCardsState extends State<NewsCards>
    with AutomaticKeepAliveClientMixin {
  List<SimpleNewsData>? _news;

  late SpiderNewsListSpecificPage spiderPage;
  late Function(String) onDetails;

  NewsCardsState();

  bool _loadedNews = false;
  Failure? error;

  Future<void> getNews() async {
    _loadedNews = false;
    _news = null;

    dartz.Either<Failure, List<SimpleNewsData>> _newsRetrieval =
        await spiderPage.scrapCurrentPage();
    _newsRetrieval.fold((failure) {
      setState(() {
        error = failure;
        _loadedNews = true;
      });
    }, (List<SimpleNewsData> _news) {
      if (mounted) {
        setState(() {
          _loadedNews = true;
          this._news = _news;
          error = null;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    spiderPage = widget.spiderPage;
    onDetails = widget.onDetails;
    getNews();
  }

  void loadMore() async {
    if (error == null && _loadedNews) {
      _loadedNews = false;
      dartz.Either<Failure, List<SimpleNewsData>> _moreNews =
          await spiderPage.scrapNextPage();
      _moreNews.fold((failure) {
        setState(() {
          error = failure;
          _loadedNews = true;
        });
      }, (List<SimpleNewsData> _news) {
        setState(() {
          this._news!.addAll(_news);
          _loadedNews = true;
          error = null;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    int count =
        _news?.length ?? 0 + (_loadedNews ? 0 : 1) + (error == null ? 0 : 1);
    return RefreshIndicator(
      onRefresh: () async {
        //        print("refreshing");
        error = null;
        _news?.clear();
        await getNews();
        setState(() {});
        return;
      },
      child: NotificationListener<ScrollUpdateNotification>(
        onNotification: (ScrollUpdateNotification scrollInfo) {
          if (_loadedNews &&
              scrollInfo.metrics.pixels >
                  scrollInfo.metrics.maxScrollExtent * 0.8) {
            loadMore();
            return true;
          }
          return false;
        },
        child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            //     print("index= $index count = $index moreNewsAvailable = $_moreNewsAvailable");
            if (!_loadedNews && index == count - 1) return const FadingCircle();
            if (error != null && index >= count - 1) {
              return ErrorPlaceholder(msg: error!.message);
            }
            return NewsCard(
                simpleNewsData: _news![index], onDetails: onDetails);
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
