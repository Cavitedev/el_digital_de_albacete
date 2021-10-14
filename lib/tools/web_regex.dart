mixin WebRegex {
  /// Example: background-image: url(https://www.eldigitaldealbacete.com/wp-content/uploads/2020/11/gente_calle_rosario_251020_archivo_albacete-30.jpg)
  static String? getUrlFromStyleRegex(String? style) {
    if (style == null) {
      return null;
    }
    return RegExp(
            r'https://www\.eldigitaldealbacete\.com.*?\.(jpg|jpeg|png|gif)')
        .firstMatch(style)!
        .group(0);
  }
}
