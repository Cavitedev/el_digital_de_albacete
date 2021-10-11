import 'package:flutter/material.dart';

class NoMoreNewsFoundErrorPlaceholder extends StatelessWidget {
  final String? msg;


  NoMoreNewsFoundErrorPlaceholder({this.msg = "no error message"});

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).textScaleFactor;
    return Container(
       // height: 40 * scale,
        color: Theme.of(context).errorColor,
        child: ListTile(
          leading: Icon(Icons.error, size: 32 * scale),
          title: Text(
            msg!,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline3
          ),
        ));
  }
}
