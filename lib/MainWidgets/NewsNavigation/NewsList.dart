import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Spider/SpiderNewsListSpecificPage.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {

  
  
  String _url = 'https://www.eldigitaldealbacete.com/economia-2/';

  
  @override
  Widget build(BuildContext context) {
    SpiderNewsListSpecificPage spiderPage = new SpiderNewsListSpecificPage(url:this._url);
    return Scaffold(
      appBar: AppBar(
        title: Text('Economía'),
        leading: Image.asset('assets/logo.png'),
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: NewsCards(spiderPage: spiderPage),
    );
  }
}


