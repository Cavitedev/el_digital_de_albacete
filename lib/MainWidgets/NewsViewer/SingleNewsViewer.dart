import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SingleNewsViewer extends StatefulWidget {
  SimpleNewsData simpleNewsData;

  SingleNewsViewer(this.simpleNewsData);

  @override
  _SingleNewsViewerState createState() =>
      _SingleNewsViewerState(simpleNewsData);
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
    _spider = SpiderSingleNews(url: _simpleNewsData.link);
    _extraNewsData = await _spider.scrapSingleNewsPage();
    if (_extraNewsData == null) return;

    setState(() {
      _loadedNews = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedNews) {
      _extraNewsData.meaningfulStrings
          .forEach((meaningfulString) => print(meaningfulString.string));
    }
    double height = MediaQuery.of(context).textScaleFactor * 5 * (20 + 4);
//    double height = 200;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
//            expandedHeight: 300,
            expandedHeight: height * 1.5 + 30,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                height: height,
                width: 220,
                child: Text(
                  _simpleNewsData.title,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            backgroundColor: Theme.of(context).accentColor,
          ),

//          SliverToBoxAdapter(child: SizedBox(child: FadingCircle())),
          SliverList(
              delegate: SliverChildListDelegate([
            CachedNetworkImage(
              placeholder: (context, url) => FadingCircle(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              imageUrl: _simpleNewsData.imageSrc,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(
                  _simpleNewsData.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ])),

          _loadedNews
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      return Text(_extraNewsData.meaningfulStrings[i].string);
                    },
                    childCount: _extraNewsData.meaningfulStrings.length,
                  ),
                )
              : SliverToBoxAdapter(child: SizedBox(child: FadingCircle())),

//            _loadedNews?ListView.builder(
//                itemCount: _extraNewsData.meaningfulStrings.length,
//                itemBuilder: (context, index){
//                  return Text(_extraNewsData.meaningfulStrings[index].string);}
//            ):
//            FadingCircle(),
        ],
      ),
    );
  }
}
