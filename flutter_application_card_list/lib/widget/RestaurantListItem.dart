import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurantListItem extends StatelessWidget {
  final String urlImgen;
  final String name;
  final double valoracionMedia;
  final String direccion;
  final double precioMedio;

  const RestaurantListItem(
      {super.key,
      required this.urlImgen,
      required this.name,
      required this.valoracionMedia,
      required this.direccion,
      required this.precioMedio});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.grey,
        child: SizedBox(
            width: 400,
            height: 370,
            child: Column(
              children: [
                Image(image: NetworkImage(urlImgen)),
                Text(name),
                Text(direccion),
                RatingBar.builder(
                  initialRating: valoracionMedia,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 3,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Text('€ ${precioMedio.toString()}')
              ],
            )),
      ),
    );
  }
}
