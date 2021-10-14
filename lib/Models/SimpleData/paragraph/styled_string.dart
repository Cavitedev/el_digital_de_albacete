import 'package:flutter/cupertino.dart';

@immutable
class StyledString {
  const StyledString({
    this.text,
    this.extraStyle,
  });

  final String? text;
  final TextStyle? extraStyle;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StyledString &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          extraStyle == other.extraStyle;

  @override
  String toString() {
    return 'StyledString{text: $text, extraStyle: $extraStyle}';
  }

  @override
  int get hashCode => text.hashCode ^ extraStyle.hashCode;
}
