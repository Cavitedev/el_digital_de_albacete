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

  List<NewsData> news;
  SpiderPage spiderPage;
  _NewsCardsState({this.spiderPage});
  bool loadedNews = false;
  
  int pages = 0;
  static const int itemCount = 25;
  void _getNews() async{
    news = await spiderPage.scrapPage();
    setState(() {
      pages++;
      loadedNews = true;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getNews();
  }

  @override
  Widget build(BuildContext context) {
    int count = itemCount*pages + (loadedNews?0:1);

      return ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            if(!loadedNews && index == count-1 )
              return FadingCircle();
            return NewsCard(newData: news[index]);
          },);
    
    
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
