import 'package:el_digital_de_albacete/Routing/newspaper_route_information_parser.dart';
import 'package:el_digital_de_albacete/Routing/newspaper_router_delegate.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'El digital de albacete',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        splashColor: Colors.green[300],
        focusColor: Colors.teal[700],
        backgroundColor: Colors.lightGreen[50],
        scaffoldBackgroundColor: Color.fromRGBO(250, 255, 250, 1),
        errorColor: Colors.red[100],
        textTheme: TextTheme(
            headline5: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(
              fontSize: 20,
            ),
            caption: TextStyle(
              fontSize: 10,
              color: Colors.black54,
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(fontSize: 28, color: Colors.white, fontFamily: "NotoSans"),
            subtitle1: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            subtitle2: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            button: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "NotoSans")),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
          primary: Color.fromARGB(0xff, 0x6e, 0xba, 0x30),
        ),
      ),
      routerDelegate: NewspaperRouterDelegate(),
      routeInformationParser: NewspaperRouteInformationParser(),
    );
  }
}
