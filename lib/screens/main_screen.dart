import 'package:flutter/material.dart';
import 'package:mini_project/screens/footballclub_list.dart';
import 'package:mini_project/models/football_club.dart';
import 'package:mini_project/widgets/app_bar.dart';
import 'package:mini_project/widgets/bottom_navbar.dart';
import 'package:mini_project/widgets/highlight_card.dart';
import 'package:mini_project/widgets/highlight_title.dart';
import 'package:mini_project/widgets/list_club.dart';
import 'package:mini_project/widgets/search_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyAppBar(),
              mySearchBar(),
              highlightTitle('Highlight Club'),
              const HighLightCard(),
              highlightTitle('Club'),
              const ClubList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}