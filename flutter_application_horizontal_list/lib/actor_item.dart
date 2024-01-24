import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String photo;
  final String name;
  const Item({super.key, required this.photo, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(photo),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(name),
            ),
          ],
        ),
      ));
  }
}