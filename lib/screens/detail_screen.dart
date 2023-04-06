import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mini_project/models/football_club.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.club});

  final FootballClub club;

  @override
  Widget build(BuildContext context) {
    double sigmaX = 0.0; // from 0-10
    double sigmaY = 0.0; // from 0-10
    double opacity = 0.25; // from 0-1.0
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        title: Text(club.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(club.imageAsset), fit: BoxFit.cover),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(opacity),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              club.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              club.location,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: club.rating,
                                  itemBuilder: (context, index) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                                Text(
                                  "${club.rating}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Column(
              //         children: [
              //           const Icon(Icons.calendar_today),
              //           Text(club.openDays),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           const Icon(Icons.access_time),
              //           Text(club.openHours),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           const Icon(Icons.attach_money),
              //           Text(club.price),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                alignment: Alignment.topLeft,
                child: const Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  club.description,
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(wordSpacing: 1.1, letterSpacing: 1.15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
