import 'package:flutter/material.dart';
import 'package:mini_project/provider/favorite_club_provider.dart';
import 'package:mini_project/models/football_club.dart';
import 'package:mini_project/screens/detail_screen.dart';
import 'package:mini_project/widgets/list_club.dart';
import 'package:provider/provider.dart';

class ClubList extends StatefulWidget {
  const ClubList({super.key});

  @override
  State<ClubList> createState() => _ClubListState();
}

class _ClubListState extends State<ClubList> {
  final List<FootballClub> clubList = [
    FootballClub(
      name: 'Arsenal F.C.',
      location: 'North London, England',
      imageAsset: 'assets/images/arsenal.png',
      description:
          'Arsenal is currently number one club in England',
      openDays: "Open Everyday",
      openHours: "08:00 P.M - 10.00 AM",
      price: '150',
      rating: 5.00,
    ),
    FootballClub(
      name: 'Real Madrid CF',
      location: 'Madrid, Spain',
      imageAsset: 'assets/images/real_madrid.png',
      description:
          'Real Madrid is currently number one club in Spain',
      openDays: "Open Everyday",
      openHours: "06.00 P.M - 10.00 AM",
      price: '200',
      rating: 4.76,
    ),
    FootballClub(
      name: 'S.S.C Napoli',
      location: 'Naples, Campania',
      imageAsset: 'assets/images/napoli.png',
      description:
          'Napoli is the best team right now in Italy',
      openDays: "Open Everyday",
      openHours: "10.00 P.M - 10.00 AM",
      price: '100',
      rating: 4.88,
    ),
    FootballClub(
      name: 'B.V.B Dortmund',
      location: 'Dortmund, North Rhine-Westphalia',
      imageAsset: 'assets/images/dortmund.png',
      description:
          'Dortmund is currently hold the title for the best team in Germany',
      openDays: "Open Everyday",
      openHours: "09.00 P.M - 10.00 AM",
      price: '175',
      rating: 4.67,
    ),
    FootballClub(
      name: 'Paris Saint Germain F.C.',
      location: 'Paris, France',
      imageAsset: 'assets/images/psg.png',
      description:
          'PSG has been dominating France in the last 10 years',
      openDays: "Open Everyday",
      openHours: "07:00 P.M - 10.00 AM",
      price: '250',
      rating: 4.58,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...clubList.map(
        (club) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    club: club,
                  ),
                ),
              );
            },
            child: Consumer<FavoriteClubProvider>(
              builder: (context, FavoriteClubProvider data, widget) => ListClub(
                club: club,
                onCheckboxClick: (bool? value) {
                  data.complete(club, value!);
                },
                isDone: data.favoriteClub.contains(club),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
