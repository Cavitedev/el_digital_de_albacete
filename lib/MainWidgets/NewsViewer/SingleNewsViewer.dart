import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter/material.dart';

class SingleNewsViewer extends StatefulWidget {

  SimpleNewsData simpleNewsData;
  SingleNewsViewer(this.simpleNewsData);
  @override
  _SingleNewsViewerState createState() => _SingleNewsViewerState(simpleNewsData);
}

class _SingleNewsViewerState extends State<SingleNewsViewer> {

  SimpleNewsData _simpleNewsData;
  SpiderSingleNews _spider;
  _SingleNewsViewerState(this._simpleNewsData);
  ExtraNewsData _extraNewsData;
  @override
  void initState() {
    super.initState();
    getExtraNewsData();
  }
  void getExtraNewsData() async {
    _spider = SpiderSingleNews(url:_simpleNewsData.link);
    _extraNewsData = await _spider.scrapSingleNewsPage();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_simpleNewsData.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Text('imagenes y noticias'),
      
    );
  }
}
