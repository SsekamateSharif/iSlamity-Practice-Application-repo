import 'package:flutter/material.dart';
import 'package:islamity/pages/edit_profile.dart';
import 'package:islamity/pages/home_page.dart';
import 'package:islamity/pages/login_page.dart';
import 'package:islamity/pages/main_page.dart';
import 'package:islamity/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Urbanist"),
      home: LoginPage(),
      routes: {
        '/main_page':(context) => MainPage(),
        '/edit_profile':(context) => EditProfilePage(),
        'profile_page': (context) => ProfilePage(),
      }
      );
  }
}
