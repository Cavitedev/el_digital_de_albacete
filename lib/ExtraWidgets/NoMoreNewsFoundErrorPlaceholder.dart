import 'package:flutter/material.dart';

class NoMoreNewsFoundErrorPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).textScaleFactor;
    return Container(
       // height: 40 * scale,
        color: Theme.of(context).errorColor,
        child: ListTile(
          leading: Icon(Icons.error, size: 32 * scale),
          title: Text(
            ' No more news found',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
