import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
            seconds: 8,
            navigateAfterSeconds: LoginPage(),
            title: new Text(
              'Flutter App',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            image: new Image.asset('assets/flutterLogo.png'),
            photoSize: 100.0,
            backgroundColor: Colors.blue,
            styleTextUnderTheLoader: new TextStyle(),
            loaderColor: Colors.white));
  }
}
