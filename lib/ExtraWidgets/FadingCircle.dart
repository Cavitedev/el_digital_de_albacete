import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FadingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           SpinKitFadingCircle(
      size: 100,
      color: Theme.of(context).splashColor,
      //color: Colors.teal[700],
    );
  }
}
