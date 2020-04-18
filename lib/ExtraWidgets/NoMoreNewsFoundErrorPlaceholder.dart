import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class NoMoreNewsFoundErrorPlaceholder extends StatelessWidget {
  String msg = "no error message";


  NoMoreNewsFoundErrorPlaceholder({@required this.msg});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).textScaleFactor;
    return Container(
       // height: 40 * scale,
        color: Theme.of(context).errorColor,
        child: ListTile(
          leading: Icon(Icons.error, size: 32 * scale),
          title: Text(
            msg,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.title
          ),
        ));
  }
}
