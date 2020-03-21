import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/NoMoreNewsFoundErrorPlaceholder.dart';
import 'package:el_digital_de_albacete/features/list_news/presentation/widgets/NewsCard.dart';
import 'package:flutter/material.dart';

import 'package:el_digital_de_albacete/features/list_news/presentation/bloc/bloc.dart';
import 'package:el_digital_de_albacete/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCards extends StatefulWidget {
  String url;

  NewsCards({this.url});

  @override
  _NewsCardsState createState() => _NewsCardsState(url: this.url);
}

class _NewsCardsState extends State<NewsCards> {

//  SpiderNewsListSpecificPage spiderPage;
  _NewsCardsState({this.url});
  final String url;
  NewsListBloc bloc;

  @override
  void initState() {
    bloc = NewsListBloc(url: url, getListNews: sl(), getNextPage: sl());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: RefreshIndicator(
        onRefresh: () async {
          bloc.add(RefreshNews(url: url));
//          BlocProvider.of(context).add(RefreshNews(url: url));
          return null;
        },
        child: BlocBuilder<NewsListBloc, NewsListState>(
          builder: (context, state) {
            return listNews(state);
          },
        ),
      ),
    );


  }

  Widget listNews(NewsListState state) {
    int count = bloc.newsList.length;
    if (state is Loading || state is Error) count++;
    return NotificationListener<ScrollUpdateNotification>(
      onNotification: (ScrollUpdateNotification scrollInfo) {
        if (state is Loaded &&
            scrollInfo.metrics.pixels >
                scrollInfo.metrics.maxScrollExtent * 0.8) {
          bloc.add(LoadMoreNews(url: url));
          return true;
        }
        return false;
      },
      child: ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          //     print("index= $index count = $index moreNewsAvailable = $_moreNewsAvailable");

          if (state is Loading) {
            if (index == count - 1) return FadingCircle();
          }
          if (state is Error) {
            if (index >= count - 1) return NoMoreNewsFoundErrorPlaceholder();
          }
          return NewsCard(simpleNewsData: bloc.newsList[index]);
        },
      ),
    );
  }
}
