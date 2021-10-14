import 'package:cached_network_image/cached_network_image.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/data_table_builder.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/error_placeholder.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/fading_circle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/upload_time.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/video_widget.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/widgets/unorderdered_list.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/meaningful_string.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/mp4_video.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/paragraph/paragraph_styled_data.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/table/data_of_table.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/unordered_list.dart';
import 'package:el_digital_de_albacete/Models/SimpleData/youtube_video.dart';
import 'package:el_digital_de_albacete/Models/extra_news_data.dart';
import 'package:el_digital_de_albacete/Models/simple_news_data.dart';
import 'package:el_digital_de_albacete/Spider/spider_single_news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleNewsViewer extends StatefulWidget {
  const SingleNewsViewer({
    required this.simpleNewsData,
    required this.goQr,
    Key? key,
  }) : super(key: key);

  final SimpleNewsData simpleNewsData;
  final void Function() goQr;

  @override
  _SingleNewsViewerState createState() => _SingleNewsViewerState();
}

class _SingleNewsViewerState extends State<SingleNewsViewer> {
  _SingleNewsViewerState();

  late SimpleNewsData _simpleNewsData;
  late SpiderSingleNews _spider;

  ExtraNewsData? _extraNewsData;
  bool _loadedNews = false;
  bool _errorloading = false;

  @override
  void initState() {
    _simpleNewsData = widget.simpleNewsData;
    super.initState();
    getExtraNewsData();
  }

  Future<void> getExtraNewsData() async {
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
                'Digital de Albacete',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize:
                          Theme.of(context).textTheme.headline4!.fontSize! /
                              MediaQuery.of(context).textScaleFactor,
                    ),
              ),
              actions: [
                IconButton(
                  onPressed: _onShare,
                  icon: const Icon(Icons.share),
                ),
                SingleNewsMenu(goQr: widget.goQr)
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                _errorloading
                    ? [
                        const ErrorPlaceholder(
                          msg: 'Error al cargar esta noticia',
                        )
                      ]
                    : [
                        if (_simpleNewsData.imageSrc != null &&
                            _extraNewsData?.simpleNewsData?.imageSrc != null)
                          CachedNetworkImage(
                            placeholder: (context, url) => const FadingCircle(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                            imageUrl: _simpleNewsData.imageSrc ??
                                _extraNewsData!.simpleNewsData!.imageSrc!,
                          ),
                        if (_simpleNewsData.title != null &&
                                _extraNewsData?.simpleNewsData?.title != null ||
                            _errorloading)
                          Padding(
                            padding: const EdgeInsets.all(8),
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
                      ],
              ),
            ),
            if (!_errorloading)
              _loadedNews
                  ? SingleNewsDataBodyWidget(extraNewsData: _extraNewsData!)
                  : const SliverToBoxAdapter(
                      child: SizedBox(child: FadingCircle()),
                    ),
          ],
        ),
      ),
    );
  }

  Future<void> _onShare() async {
    return Share.share(
      _simpleNewsData.link ??
          _extraNewsData?.simpleNewsData?.link ??
          'error sharing',
    );
  }
}

class SingleNewsMenu extends StatelessWidget {
  const SingleNewsMenu({
    required this.goQr,
    Key? key,
  }) : super(key: key);

  final void Function() goQr;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          child: InkWell(
            onTap: goQr,
            child: Row(
              children: [
                const Icon(
                  Icons.qr_code,
                  color: Colors.black,
                ),
                Text(
                  'QR',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SingleNewsDataBodyWidget extends StatelessWidget {
  const SingleNewsDataBodyWidget({
    required ExtraNewsData extraNewsData,
    Key? key,
  })  : _extraNewsData = extraNewsData,
        super(key: key);

  final ExtraNewsData _extraNewsData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) {
          if (_extraNewsData.newsContent![i] is ParagraphStyledData) {
            final ParagraphStyledData _data =
                _extraNewsData.newsContent![i] as ParagraphStyledData;

            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText2,
                  children: _data.styledData.map((textStyled) {
                    return TextSpan(
                      text: textStyled.text,
                      style: textStyled.extraStyle,
                    );
                  }).toList(),
                ),
              ),
            );
          } else if (_extraNewsData.newsContent![i] is MeaningfulString) {
            final MeaningfulString _data =
                _extraNewsData.newsContent![i] as MeaningfulString;
            return meaningulStringUI(_data, context);
          } else if (_extraNewsData.newsContent![i] is UnorderedList) {
            return UnorderedListWidget(
              unorderedList: _extraNewsData.newsContent![i] as UnorderedList,
            );
          } else if (_extraNewsData.newsContent![i] is YoutubeVideo) {
            return YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId:
                    (_extraNewsData.newsContent![i] as YoutubeVideo).source!,
                flags: const YoutubePlayerFlags(
                  autoPlay: true,
                ),
              ),
            );
          } else if (_extraNewsData.newsContent![i] is MP4Video) {
            return VideoWidget(
              videoPlayerController: VideoPlayerController.network(
                (_extraNewsData.newsContent![i] as MP4Video).link,
              ),
            );
          } else if (_extraNewsData.newsContent![i] is DataOfTable) {
            final DataOfTable dataOfTable =
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

  static Padding? meaningulStringUI(
    MeaningfulString _data,
    BuildContext context,
  ) {
    switch (_data.textTag) {
      case TextTag.img:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CachedNetworkImage(
            placeholder: (context, url) => const FadingCircle(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageUrl: _data.string!,
          ),
        );
      case TextTag.h2:
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            _data.string!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        );
      case TextTag.h3:
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            _data.string!,
            style: Theme.of(context).textTheme.headline6,
          ),
        );
      case TextTag.h4:
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            _data.string!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        );
      case null:
    }
  }
}
