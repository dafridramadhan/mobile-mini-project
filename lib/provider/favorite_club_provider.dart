import 'package:flutter/material.dart';
import 'package:mini_project/models/football_club.dart';

class FavoriteClubProvider with ChangeNotifier {
  final List<FootballClub> _favoriteClub = [];
  List<FootballClub> get favoriteClub => _favoriteClub;

  void complete(FootballClub club, bool isDone) {
    isDone ? _favoriteClub.add(club) : _favoriteClub.remove(club);
    notifyListeners();
  }
}