import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
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
  bool _loadedNews = false;
  @override
  void initState() {
    super.initState();
    getExtraNewsData();
  }
  void getExtraNewsData() async {
    _spider = SpiderSingleNews(url:_simpleNewsData.link);
    _extraNewsData = await _spider.scrapSingleNewsPage();
    if(_extraNewsData== null)
      return;

    setState(() {
      _loadedNews=true;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    if(_loadedNews){
      _extraNewsData.meaningfulStrings.forEach((meaningfulString)=>print(meaningfulString.string));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(_simpleNewsData.title),
        backgroundColor: Theme.of(context).accentColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: <Widget>[
          CachedNetworkImage(
            placeholder: (context,url) => FadingCircle(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            imageUrl: _simpleNewsData.imageSrc,
          ),


          _loadedNews?ListView.builder(
                  itemCount: _extraNewsData.meaningfulStrings.length,
                  itemBuilder: (context, index){
                    return Text(_extraNewsData.meaningfulStrings[index].string);}
          ):
          FadingCircle(),
        ],
      ),
      
    );
  }
}
