import 'package:el_digital_de_albacete/ExtraWidgets/FadingCircle.dart';
import 'package:el_digital_de_albacete/Models/NewsData.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class NewsCard extends StatelessWidget {

  final NewsData newData;

  NewsCard({this.newData});

  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return InkWell(
      onTap: () {
        print("tapping new with link= ${newData.link}");
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
        child: SizedBox(
          height: 105 * (textScaleFactor>1?textScaleFactor:1.0),
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
                  imageUrl: newData.imageSrc,
                ),
              ),
              
//            Image.network(newData.imageSrc, height: 100),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 0, 0, 0.0),
                  child: _ArticleDescription(
                    title: newData.title,
                    publishDate: newData.publishDate,
                  ),
                ),
              )
            ],
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
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child:Row(
            children: <Widget>[
              Icon(Icons.access_time,size: 12,),
              Text(
                ' $publishDate',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}
