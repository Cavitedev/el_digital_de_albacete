import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsList.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/SearchNews.dart';
import 'package:el_digital_de_albacete/MainWidgets/NewsViewer/SingleNewsViewer.dart';
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
        MaterialPage(key: ValueKey("listNews"), child: NewsList()),
        if (_currentConf.isSearching)
          MaterialPage(key: ValueKey("searchNews"), child: SearchNews()),
        if (_currentConf.newsOpened)
          MaterialPage(
              key: ValueKey("DetailNews"),
              child: SingleNewsViewer(SimpleNewsData(
                  link: "eldigitaldealbacete.com" + _currentConf.pathName))),
      ],
      onPopPage: (route, result) {
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(
      NewspaperRoutingConfiguration configuration) async {
    _currentConf = configuration;
    notifyListeners();
    return Future.value(null);
  }
}
