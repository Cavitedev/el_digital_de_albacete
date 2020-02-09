import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/UploadTime.dart';
import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/DataOfTable.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              title: Text(
                "Economía",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              backgroundColor: Theme.of(context).accentColor,
            ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: UploadTime(
                  publishDate: _simpleNewsData.publishDate,
                  size: 16,
                ),
              ),
            ])),
            _loadedNews
                ? SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) {
                        if (_extraNewsData.newsContent[i] is MeaningfulString) {
                          MeaningfulString _data =
                              _extraNewsData.newsContent[i];

                          switch (_data.textTag) {
                            case TextTag.p:
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                                child: Text(
                                  _data.string,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              );
                              break;
                            case TextTag.img:
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: CachedNetworkImage(
                                  placeholder: (context, url) => FadingCircle(),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                  imageUrl: _data.string,
                                ),
                              );
                              break;
                            case TextTag.h2:
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _data.string,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                              break;
                            default:
                              print("default");
                              return null;
                              break;
                          }
                        } else if (_extraNewsData.newsContent[i]
                            is DataOfTable) {
                          DataOfTable dataOfTable =
                              _extraNewsData.newsContent[i];
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DataTable(
                                  columns: dataOfTable.headerRow
                                      .map(
                                        (row) => DataColumn(
                                          label: Text(
                                            row,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  rows: dataOfTable.table
                                      .map((row) => DataRow(
                                          cells: row
                                              .map(
                                                (cell) => DataCell(
                                                  Text(
                                                    cell,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList()))
                                      .toList()));
                        } else {
                          print(_extraNewsData.newsContent[i]);
                          return null;
                        }
                      },
                      childCount: _extraNewsData.newsContent.length,
                    ),
                  )
                : SliverToBoxAdapter(child: SizedBox(child: FadingCircle())),
          ],
        ),
      ),
    );
  }
}
