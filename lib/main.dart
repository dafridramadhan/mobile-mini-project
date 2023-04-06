import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mini_project/provider/favorite_club_provider.dart';
import 'package:mini_project/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteClubProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: const MainScreen(),
      ),
    );
  }
}