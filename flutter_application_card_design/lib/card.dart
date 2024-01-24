import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String arriveHour;
  final String arriveCity;
  final String arriveSi;
  final String leaveHour;
  final String leaveCity;
  final String leaveSi;
  const TravelCard({super.key, required this.arriveHour, required this.arriveCity, required this.arriveSi, required this.leaveCity, required this.leaveHour, required this.leaveSi});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(30),
        shape: ContinuousRectangleBorder(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}