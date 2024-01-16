import 'package:flutter/material.dart';
import 'package:flutter_application_card_list/widget/RestaurantListItem.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top restaurant of world")),
      body: ListView(
        children: const [
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Central-interior.jpg",
              name: "Central",
              valoracionMedia: 3,
              direccion: "Lima",
              precioMedio: 265),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Disfrutar-dish.jpg",
              name: "Disfrutar",
              valoracionMedia: 3,
              direccion: "Barcelona",
              precioMedio: 275),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Diverxo-Dish%20(2).jpg",
              name: "Diverxo",
              valoracionMedia: 3,
              direccion: "Madrid",
              precioMedio: 365),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Asador-Etxebarri-interior.jpg",
              name: "Asador Etxebarri",
              valoracionMedia: 1,
              direccion: "Atxondo",
              precioMedio: 280),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Alchemist-interior.jpg",
              name: "Alchemist",
              valoracionMedia: 2,
              direccion: "Copenhagen",
              precioMedio: 657),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Maido-Interior.jpg",
              name: "Maido",
              valoracionMedia: 2,
              direccion: "Lima",
              precioMedio: 196.77),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Lido84-interior.jpg",
              name: "Lido 84",
              valoracionMedia: 1,
              direccion: "Gardone Riviera",
              precioMedio: 140),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Atomix-dish%20(2).jpg",
              name: "Atomix",
              valoracionMedia: 2,
              direccion: "New Tork",
              precioMedio: 205),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Quintonil-dish%20(2).jpg",
              name: "Quintonil",
              valoracionMedia: 2,
              direccion: "Mexico City",
              precioMedio: 193),
          RestaurantListItem(
              urlImgen:
                  "https://www.theworlds50best.com/filestore/jpg/W50BR23-1-50-List-Table-by-Bruno-Verjus-dish.jpg",
              name: "Table By Bruno Verjus",
              valoracionMedia: 2,
              direccion: "Paris",
              precioMedio: 400)
        ],
      ),
    );
  }
}
