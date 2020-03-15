import 'package:el_digital_de_albacete/MainWidgets/NewsNavigation/NewsList.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El digital de albacete',
      theme: ThemeData(

        primaryColorLight: Colors.white,
        splashColor: Colors.green[300],
        focusColor: Colors.teal[700],
        backgroundColor: Colors.lightGreen[50],
        scaffoldBackgroundColor: Color.fromRGBO(250, 255, 250, 1),
        accentColor: Color.fromARGB(0xff, 0x6e, 0xba, 0x30),
        errorColor: Colors.red[100],
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, ),
          body1: TextStyle(fontSize: 20,),
          caption: TextStyle(fontSize: 10, color: Colors.black54, ),
          title: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, ),
          display1: TextStyle(fontSize: 24, color: Colors.white, fontFamily: "NotoSans"),
          subhead: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, ),
          subtitle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),
          button: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "NotoSans")
        ),
      ),
      home: NewsList(),
    );
  }
}
