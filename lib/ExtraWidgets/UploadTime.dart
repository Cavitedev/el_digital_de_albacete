import 'package:flutter/material.dart';

class UploadTime extends StatelessWidget {
  String publishDate;
  double size = 10;
  UploadTime({this.publishDate, this.size});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.access_time,size: size*1.2,),
        Text(
          ' $publishDate',
          style: TextStyle(
            fontSize: size,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
