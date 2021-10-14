import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({
    required this.link,
    Key? key,
  }) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital de Albacete',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: Theme.of(context).textTheme.headline4!.fontSize! /
                    MediaQuery.of(context).textScaleFactor,
              ),
        ),
      ),
      body: Center(
        child: QrImage(
          data: link,
          backgroundColor: Colors.white,
          size: 200,
        ),
      ),
    );
  }
}
