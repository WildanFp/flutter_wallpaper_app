import 'package:flutter/material.dart';
import 'package:flutter_wallpaper_app/views/home.dart';
//package letak folder Anda
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Wallpaper App',
 theme: ThemeData(
 primaryColor: Colors.blueGrey,
 ),
 home: const Home(),
 );
 }
}