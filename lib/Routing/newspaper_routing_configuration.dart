class NewspaperRoutingConfiguration {
  bool newsOpened = false;
  String pathName;
  bool isSearching = false;
  bool isQR = false;

  NewspaperRoutingConfiguration.home(this.pathName)
      : newsOpened = false,
        isSearching = false,
        isQR = false;

  NewspaperRoutingConfiguration.search(this.pathName)
      : newsOpened = false,
        isSearching = true,
        isQR = false;

  NewspaperRoutingConfiguration.detailView(this.pathName)
      : newsOpened = true,
        isSearching = false,
        isQR = false;

  NewspaperRoutingConfiguration.qr(this.pathName)
      : newsOpened = true,
        isSearching = false,
        isQR = true;

  String? searchQuery() {
    Uri uri = Uri.parse(pathName);
    return uri.queryParameters['s'];
  }

  String url() => "https://www.eldigitaldealbacete.com" + pathName;
}
