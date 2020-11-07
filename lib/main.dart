import 'package:flutter/material.dart';
import 'package:kittle/pages/home_page.dart';
import 'package:kittle/theme/app_colors.dart';

void main() {
  runApp(MyApp());
}

final ThemeData darkTheme = ThemeData(
  fontFamily: 'Montserrat',
  brightness: Brightness.dark,
  backgroundColor: AppColors.shark,
  primaryColor: AppColors.shark,
  accentColor: AppColors.shark,
  scaffoldBackgroundColor: AppColors.shark,
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: Material(child: HomePage()),
    );
  }
}