class NewspaperRoutingConfiguration {
  bool newsOpened = false;
  String pathName;

  bool isSearching = false;

  NewspaperRoutingConfiguration.home(this.pathName)
      : newsOpened = false,
        isSearching = false;

  NewspaperRoutingConfiguration.search(this.pathName)
      : newsOpened = false,
        isSearching = false;

  NewspaperRoutingConfiguration.detailView(this.pathName)
      : newsOpened = true,
        isSearching = false;
}
