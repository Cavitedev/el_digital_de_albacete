import 'package:el_digital_de_albacete/Routing/newspaper_routing_configuration.dart';
import 'package:flutter/material.dart';


class NewspaperRouteInformationParser extends RouteInformationParser<NewspaperRoutingConfiguration>{


  @override
  Future<NewspaperRoutingConfiguration> parseRouteInformation(RouteInformation routeInformation) async {
    final Uri uri = Uri.parse(routeInformation.location ?? '');

    if (uri.queryParameters['s'] != null) {
      return NewspaperRoutingConfiguration.search(uri.query);
    }
    if (uri.pathSegments.length == 4) {
      return NewspaperRoutingConfiguration.detailView(uri.query);
    }

    return NewspaperRoutingConfiguration.home(uri.query);


  }

  // @override
  // RouteInformation restoreRouteInformation(NewspaperRoutingConfiguration configuration) {
  //
  // }
}