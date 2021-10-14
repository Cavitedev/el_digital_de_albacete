import 'package:el_digital_de_albacete/Models/SimpleData/news_data.dart';
import 'package:flutter/cupertino.dart';

@immutable
class MP4Video implements NewsData {
  const MP4Video({required this.link});

  final String link;

  @override
  String toString() {
    return 'MP4Video{link: $link}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is MP4Video && runtimeType == other.runtimeType && link == other.link;

  @override
  int get hashCode => link.hashCode;
}
