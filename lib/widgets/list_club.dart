import 'package:flutter/material.dart';
import 'package:mini_project/models/football_club.dart';
import 'package:mini_project/screens/favorite_club.dart';
import 'package:mini_project/screens/footballclub_list.dart';
import 'package:mini_project/models/football_club.dart';

class ListClub extends StatelessWidget {
  const ListClub(
      {super.key,
      required this.club,
      required this.isDone,
      required this.onCheckboxClick});

  final FootballClub club;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white : Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        club.imageAsset,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    club.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isDone ? Colors.black : Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    club.location,
                    style: TextStyle(
                      fontSize: 14,
                      color: isDone ? Colors.black : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  MyClipOval(
                    isDone: isDone, 
                    onChanged: onCheckboxClick,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipOval extends StatefulWidget {
  final bool isDone;
  final Function(bool) onChanged;

  const MyClipOval({Key? key, required this.isDone, required this.onChanged})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyClipOvalState createState() => _MyClipOvalState();
}

class _MyClipOvalState extends State<MyClipOval> {
  bool _isDone = false;

  @override
  void initState() {
    super.initState();
    _isDone = widget.isDone;
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.blue,
          child: SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              _isDone ? Icons.favorite : Icons.favorite_border,
              color: _isDone ? Colors.blue : null,
            ),
          ),
          onTap: () {
            setState(() {
              _isDone = !_isDone;
              widget.onChanged(_isDone);
            });
          },
        ),
      ),
    );
  }
}

