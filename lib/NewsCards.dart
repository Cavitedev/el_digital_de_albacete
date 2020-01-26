import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/Models/NewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderPage.dart';
import 'package:flutter/material.dart';
import 'package:el_digital_de_albacete/NewsCard.dart';

class NewsCards extends StatefulWidget {
  SpiderPage spiderPage;
  
  NewsCards({this.spiderPage});
  
  @override
  _NewsCardsState createState() => _NewsCardsState(spiderPage: this.spiderPage);
}

class _NewsCardsState extends State<NewsCards> {

  List<NewsData> _news;
  SpiderPage spiderPage;
  _NewsCardsState({this.spiderPage});
  bool _loadedNews = false;
  
  int _pages = 0;
  static const int _itemCount = 25;
  
  
  
  void _getNews() async{
    _news = await spiderPage.scrapCurrentPage();
    setState(() {
      _pages++;
      _loadedNews = true;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getNews();
  }

  void loadMore() {
    if(_loadedNews) {
      _loadedNews = false;
      print("loading more news");
    }
  }
  
  @override
  Widget build(BuildContext context) {
    int count = _itemCount*_pages + (_loadedNews?0:1);
  print("build");
      return NotificationListener<ScrollUpdateNotification >(
        
          onNotification: (ScrollUpdateNotification  scrollInfo) {
            if(_loadedNews && scrollInfo.metrics.pixels>scrollInfo.metrics.maxScrollExtent*0.8) {
              loadMore();
              return true;
            }
            return false;
          },
          
          child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            if(!_loadedNews && index == count-1 )
              return FadingCircle();
            return NewsCard(newData: _news[index]);
          },),
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
