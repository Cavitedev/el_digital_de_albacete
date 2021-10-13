import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsList.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/SearchNews.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/SingleNewsViewer.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/qr_screen.dart';
import 'package:el_digital_de_albacete/Models/SimpleNewsData.dart';
import 'package:el_digital_de_albacete/Routing/newspaper_routing_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewspaperRouterDelegate
    extends RouterDelegate<NewspaperRoutingConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<NewspaperRoutingConfiguration> {
  GlobalKey<NavigatorState> navigatorKey;
  NewspaperRoutingConfiguration _currentConf =
      NewspaperRoutingConfiguration.home("");

  NewspaperRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
            key: ValueKey("listNews"),
            child: NewsList(
                onSearch: () {
                  _currentConf.isSearching = true;
                  notifyListeners();
                },
                onDetails: _onDetails)),
        if (_currentConf.isSearching)
          MaterialPage(
              key: ValueKey("searchNews"),
              child: SearchNews(
                query: _currentConf.searchQuery(),
                onDetails: _onDetails,
              )),
        if (_currentConf.newsOpened)
          MaterialPage(
              key: ValueKey(_currentConf.pathName),
              child: SingleNewsViewer(
                simpleNewsData: SimpleNewsData(
                  link: _currentConf.url(),
                ),
                goQr: () {
                  _currentConf =
                      NewspaperRoutingConfiguration.qr(_currentConf.pathName);
                  notifyListeners();
                },
              )),
        if (_currentConf.isQR)
          MaterialPage(
              key: ValueKey("QR/" + _currentConf.pathName),
              child: QrScreen(
                link: _currentConf.url(),
              )),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        popRoute();

        return true;
      },
    );
  }

  _onDetails(String detailsUrl) {
    _currentConf.pathName =
        detailsUrl.replaceFirst("https://www.eldigitaldealbacete.com", "");
    _currentConf.newsOpened = true;
    notifyListeners();
  }

  @override
  Future<bool> popRoute() {
    if (_currentConf.isSearching || _currentConf.newsOpened) {
      _currentConf = NewspaperRoutingConfiguration.home("");
      notifyListeners();
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  Future<void> setNewRoutePath(
      NewspaperRoutingConfiguration configuration) async {
    _currentConf = configuration;
    notifyListeners();
    return Future.value(null);
  }
}
