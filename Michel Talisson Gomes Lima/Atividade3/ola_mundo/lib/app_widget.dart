import 'package:flutter/material.dart';
import 'package:olamundo/app_controller.dart';
import 'package:olamundo/home_page.dart';
import 'package:olamundo/login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.green,
                brightness: AppController.instance.isDark
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
