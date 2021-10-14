import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FadingCircle extends StatelessWidget {
  const FadingCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SpinKitFadingCircle(
      size: 100,
      color: Theme.of(context).focusColor,
    );
}
