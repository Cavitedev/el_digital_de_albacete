import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/DataTableBuilder.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/ErrorPlaceholder.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/UploadTime.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/VideoWidget.dart';
import 'package:el_digital_de_albacete/Models/ExtraNewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MP4Video.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/MeaningfulString.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/NewsData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/UnorderedList.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/YoutubeVideo.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/ParagraphStyledData.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/DataOfTable.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Spider/SpiderSingleNews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleNewsViewer extends StatefulWidget {
  final SimpleNewsData simpleNewsData;
  final Function goQr;

  SingleNewsViewer({required this.simpleNewsData, required this.goQr});

  @override
  _SingleNewsViewerState createState() =>
      _SingleNewsViewerState(simpleNewsData, goQr);
}

class _SingleNewsViewerState extends State<SingleNewsViewer> {
  SimpleNewsData _simpleNewsData;
  late SpiderSingleNews _spider;
  final Function goQr;

  _SingleNewsViewerState(this._simpleNewsData, this.goQr);

  ExtraNewsData? _extraNewsData;
  bool _loadedNews = false;
  bool _errorloading = false;

  @override
  void initState() {
    super.initState();
    getExtraNewsData();
  }

  void getExtraNewsData() async {
    if (_simpleNewsData.link == null) {
      _errorLoading();
      return;
    }
    try {
      _spider = SpiderSingleNews(url: _simpleNewsData.link!);
      _extraNewsData = await _spider.scrapSingleNewsPage(_simpleNewsData);
      if (_extraNewsData == null) {
        _errorLoading();
        return;
      }
    } on Exception {
      _errorLoading();
      return;
    }

    setState(() {
      _errorloading = false;
      _loadedNews = true;
    });
  }

  void _errorLoading() {
    setState(() {
      _errorloading = true;
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
                "Digital de Albacete",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize! /
                        MediaQuery.of(context).textScaleFactor),
              ),
              actions: [
                SingleNewsMenu(goQr: goQr)
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate(_errorloading
                    ? [ErrorPlaceholder(msg: "Error al cargar esta noticia")]
                    : [
                        if (_simpleNewsData.imageSrc != null &&
                            _extraNewsData?.simpleNewsData?.imageSrc != null)
                          CachedNetworkImage(
                            placeholder: (context, url) => FadingCircle(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            imageUrl: _simpleNewsData.imageSrc ??
                                _extraNewsData!.simpleNewsData!.imageSrc!,
                          ),
                        if (_simpleNewsData.title != null &&
                                _extraNewsData?.simpleNewsData?.title != null ||
                            _errorloading)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Text(
                                _simpleNewsData.title ??
                                    _extraNewsData?.simpleNewsData?.title ??
                                    'No se ha encontrado el título 2',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                          ),
                        if (_simpleNewsData.publishDate != null &&
                            _extraNewsData?.simpleNewsData?.publishDate != null)
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: UploadTime(
                              publishDate: _simpleNewsData.publishDate ??
                                  _extraNewsData?.simpleNewsData?.publishDate,
                              size: 16,
                            ),
                          ),
                      ])),
            if (!_errorloading)
              _loadedNews
                  ? SingleNewsDataBodyWidget(extraNewsData: _extraNewsData!)
                  : SliverToBoxAdapter(child: SizedBox(child: FadingCircle())),
          ],
        ),
      ),
    );
  }
}

class SingleNewsMenu extends StatelessWidget {
  const SingleNewsMenu({
    Key? key,
    required this.goQr,
  }) : super(key: key);

  final Function goQr;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
                child: InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.qr_code,
                        color: Colors.black,
                      ),
                      Text(
                        "QR",
                        style:
                            Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  onTap: () {
                    goQr();
                  },
                ),
              )
            ]);
  }
}

class SingleNewsDataBodyWidget extends StatelessWidget {
  SingleNewsDataBodyWidget({
    Key? key,
    required ExtraNewsData extraNewsData,
  })  : _extraNewsData = extraNewsData,
        super(key: key);

  final ExtraNewsData _extraNewsData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) {
          if (_extraNewsData.newsContent![i] is ParagraphStyledData) {
            ParagraphStyledData _data =
                _extraNewsData.newsContent![i] as ParagraphStyledData;

            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
              child: RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: _data.styledData.map((textStyled) {
                      return TextSpan(
                          text: textStyled.text, style: textStyled.extraStyle);
                    }).toList()),
              ),
            );
          } else if (_extraNewsData.newsContent![i] is MeaningfulString) {
            MeaningfulString _data =
                _extraNewsData.newsContent![i] as MeaningfulString;
            return meaningulStringUI(_data, context);
          } else if (_extraNewsData.newsContent![i] is UnorderedList) {
            List<NewsData> elements =
                (_extraNewsData.newsContent![i] as UnorderedList).elements;
            //           print(elements);

            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: elements.map((listItem) {
                  if (listItem is MeaningfulString) {
                    MeaningfulString showString = MeaningfulString(
                        string: "•   " + listItem.string!,
                        textTag: listItem.textTag);
                    return meaningulStringUI(showString, context);
                  } else if (listItem is ParagraphStyledData) {
                    List<TextSpan> itemText = [TextSpan(text: "•   ")];
                    itemText.addAll(listItem.styledData.map((textStyled) {
                      return TextSpan(
                          text: textStyled.text, style: textStyled.extraStyle);
                    }).toList());

                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.bodyText2,
                            children: itemText),
                      ),
                    );
                  } else {
                    return null;
                  }
                }).toList() as List<Widget>);
          } else if (_extraNewsData.newsContent![i] is YoutubeVideo) {
            return YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId:
                    (_extraNewsData.newsContent![i] as YoutubeVideo).source!,
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                ),
              ),
            );
          } else if (_extraNewsData.newsContent![i] is MP4Video) {
            return VideoWidget(
                videoPlayerController: VideoPlayerController.network(
                    (_extraNewsData.newsContent![i] as MP4Video).link));
          } else if (_extraNewsData.newsContent![i] is DataOfTable) {
            DataOfTable dataOfTable =
                _extraNewsData.newsContent![i] as DataOfTable;
            return DataTableBuilder(dataOfTable: dataOfTable);
          } else {
            return null;
          }
        },
        childCount: _extraNewsData.newsContent!.length,
      ),
    );
  }

  Padding? meaningulStringUI(MeaningfulString _data, BuildContext context) {
    switch (_data.textTag) {
      case TextTag.img:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CachedNetworkImage(
            placeholder: (context, url) => FadingCircle(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            imageUrl: _data.string!,
          ),
        );
      case TextTag.h2:
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_data.string!,
                style: Theme.of(context).textTheme.subtitle1));
      case TextTag.h3:
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_data.string!,
                style: Theme.of(context).textTheme.headline6));
      case TextTag.h4:
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_data.string!,
                style: Theme.of(context).textTheme.subtitle2));
      default:
        return null;
    }
  }
}
