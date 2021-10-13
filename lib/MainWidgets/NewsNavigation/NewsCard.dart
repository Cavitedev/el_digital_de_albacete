import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/ExtraWidgets/UploadTime.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/SingleNewsViewer.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class NewsCard extends StatelessWidget {

  final SimpleNewsData simpleNewsData;

  NewsCard({this.simpleNewsData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SingleNewsViewer(simpleNewsData)));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2, 2, 2, 0),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: SizedBox(
            height: 105,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: 190,
                  child: CachedNetworkImage(
                    placeholder: (context,url) => FadingCircle(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    imageUrl: simpleNewsData.imageSrc,
                  ),
                ),

//            Image.network(newData.imageSrc, height: 100),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0.0),
                    child: _ArticleDescription(
                      title: simpleNewsData.title,
                      publishDate: simpleNewsData.publishDate,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.publishDate,
  }) : super(key: key);

  final String title;
  final String publishDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 2,
        ),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                maxLines: (4.5 / MediaQuery.of(context).textScaleFactor).floor(),
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle,

              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child:UploadTime(publishDate: publishDate,size: 11,)

        ),
      ],
    );
  }
}
