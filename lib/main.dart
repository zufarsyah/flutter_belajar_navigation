import 'package:flutter/material.dart';
import 'package:flutter_belajar_navigator/ui/firstpage.dart';
import 'package:flutter_belajar_navigator/ui/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Belajar Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: FirstPage.routeName,
      // routes: {
      //   FirstPage.routeName: (context) => FirstPage(),
      //   SecondPage.routeName:(context) => SecondPage(),
      // },
      home: FirstPage(),
    );
  }
}



