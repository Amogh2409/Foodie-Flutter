import 'package:flutter/material.dart';
import 'package:foodie/constants.dart';

import 'Welcome/welcome_screen.dart';


void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: kPrimaryColor,
            shape: const StadiumBorder(),
            minimumSize: const Size(double.infinity, 56),
            maximumSize: const Size(double.infinity, 56),
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        )
      ),
      home: const WelcomeScreen(),
    );
  }
}