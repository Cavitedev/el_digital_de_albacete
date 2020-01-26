import 'package:el_digital_de_albacete/NewsCards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Spider/SpiderPage.dart';

class Cover extends StatefulWidget {
  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {

  
  
  String _url = 'https://www.eldigitaldealbacete.com/economia-2/';

  
  @override
  Widget build(BuildContext context) {
    SpiderPage spiderPage = new SpiderPage(url:this._url);
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


