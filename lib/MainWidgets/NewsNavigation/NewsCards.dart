import 'package:dartz/dartz.dart' as dartz;
import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/NoMoreNewsFoundErrorPlaceholder.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderNewsListSpecificPage.dart';
import 'package:el_digital_de_albacete/core/error/failures.dart';
import 'package:flutter/material.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsCard.dart';

class NewsCards extends StatefulWidget {
  final SpiderNewsListSpecificPage spiderPage;
  NewsCards({this.spiderPage, Key key}) : super(key : key);

  @override
  NewsCardsState createState() => NewsCardsState(spiderPage: this.spiderPage);
}

class NewsCardsState extends State<NewsCards> {

  List<SimpleNewsData> _news;

  SpiderNewsListSpecificPage spiderPage;
  NewsCardsState({this.spiderPage});

  bool _loadedNews = false;
  Failure error;




  Future<void> getNews() async {
    _loadedNews = false;
    _news = null;
//    print("cards init state ${_loadedNews? "news laoded" : "not loaded"}");
    dartz.Either<Failure,
        List<SimpleNewsData>> _newsRetrieval = await spiderPage
        .scrapCurrentPage();
    _newsRetrieval.fold((failure) {
      setState(() {
        error = failure;
        _loadedNews = true;
      });
    }, (List<SimpleNewsData> _news) {
      if(mounted){
        setState(() {
          _loadedNews = true;
          this._news = _news;
          error = null;
        });
      }

    }
    );
  }

  @override
  void initState() {
    super.initState();

    getNews();
  }

  void loadMore() async {
    if (error == null && _loadedNews) {
      _loadedNews = false;
      dartz.Either<Failure, List<SimpleNewsData>> _moreNews = await spiderPage
          .scrapNextPage();
      if (_moreNews == null) return;
      _moreNews.fold((failure) {
        setState(() {
          error = failure;
          _loadedNews = true;
        });
      }
          , (List<SimpleNewsData> _news) {
            setState(() {
              this._news.addAll(_news);
              _loadedNews = true;
              error = null;
            });
          });
    }
  }


    @override
    Widget build(BuildContext context) {
//      print("cards build ${spiderPage.url} last URL $_lastURL");

      int count = _news?.length?? 0 + (_loadedNews ? 0 : 1) +
          (error == null ? 0 : 1);
      return RefreshIndicator(
        onRefresh: () async {
          error = null;
          _news.clear();
          await getNews();
          setState(() {

          });
          return null;
        },
        child: NotificationListener<ScrollUpdateNotification>(

          onNotification: (ScrollUpdateNotification scrollInfo) {
            if (_loadedNews && scrollInfo.metrics.pixels >
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
              if (!_loadedNews && index == count - 1)
                return FadingCircle();
              if (error != null && index >= count - 1){
                 return NoMoreNewsFoundErrorPlaceholder(msg: error.message);
              }
              return NewsCard(simpleNewsData: _news[index]);
            },),
        ),
      );


//    return SingleChildScrollView(
//      child: Column(
//        children: loadingNews?<Widget> [
//        FadingCircle(),
//        ]:news.map((newData)=> new NewsCard(newData: newData)).toList()
//            
//      ),

//    );
    }
  }
