import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_web_redesign/app/constants.dart';
import 'package:instagram_web_redesign/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Instagram Web Redesign',
      theme: ThemeData(
        fontFamily: 'Sofia Pro',
        scaffoldBackgroundColor: AppConst.colorGrey,
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
