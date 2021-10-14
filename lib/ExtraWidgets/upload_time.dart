import 'package:flutter/material.dart';

class UploadTime extends StatelessWidget {
  final String? publishDate;
  final double size;
  const UploadTime({Key? key, this.publishDate, this.size = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          size: size * 1.2,
        ),
        Text(
          ' $publishDate',
          style: Theme.of(context).textTheme.caption!.copyWith(fontSize: size),
        ),
      ],
    );
  }
}
