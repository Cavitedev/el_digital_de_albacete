import 'package:el_digital_de_albacete/Routing/newspaper_routing_configuration.dart';
import 'package:flutter/material.dart';


class NewspaperRouteInformationParser extends RouteInformationParser<NewspaperRoutingConfiguration>{


  @override
  Future<NewspaperRoutingConfiguration> parseRouteInformation(RouteInformation routeInformation) async {
    final Uri uri = Uri.parse(routeInformation.location ?? '');



    if (uri.queryParameters['s'] != null) {
      return NewspaperRoutingConfiguration.search(uri.toString());
    }
    if (uri.pathSegments.length == 5) {
      return NewspaperRoutingConfiguration.detailView(uri.toString());
    }

    return NewspaperRoutingConfiguration.home(uri.toString());


  }

  @override
  RouteInformation restoreRouteInformation(NewspaperRoutingConfiguration configuration) {
    return RouteInformation(location: configuration.pathName);
  }
}