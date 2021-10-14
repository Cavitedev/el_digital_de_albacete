class SimpleNewsData {
  SimpleNewsData({this.imageSrc, this.title, this.publishDate, this.link});

  String? imageSrc;
  String? title;
  String? publishDate;
  String? link;

  bool get isComplete =>
      imageSrc != null && title != null && publishDate != null && link != null;
}
