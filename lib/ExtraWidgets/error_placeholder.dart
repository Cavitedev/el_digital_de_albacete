import 'package:flutter/material.dart';

class ErrorPlaceholder extends StatelessWidget {
  final String? msg;

  const ErrorPlaceholder({
    this.msg = "no error message",
    Key? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    double scale = MediaQuery.of(context).textScaleFactor;
    return Container(
        // height: 40 * scale,
        color: Theme.of(context).errorColor,
        child: ListTile(
          leading: Icon(Icons.error, size: 32 * scale),
          title: Text(msg!,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline3),
        ));
  }
}
