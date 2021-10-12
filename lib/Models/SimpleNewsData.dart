class SimpleNewsData {
  String? imageSrc;
  String? title;
  String? publishDate;
  String? link;

  SimpleNewsData({this.imageSrc, this.title, this.publishDate, this.link});

  bool get isComplete =>
      imageSrc != null && title != null && publishDate != null && link != null;
}
