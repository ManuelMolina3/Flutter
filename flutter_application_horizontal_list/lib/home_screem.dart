import 'package:flutter/material.dart';
import 'package:flutter_application_horizontal_list/actor_item.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Best Spanish Actor"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
         Item(photo: "https://www.lecturas.com/medio/2022/06/16/penelope-cruz_558d57f9_800x800.jpg", name: "Penelope Cruz"),
         Item(photo: "https://cdn.britannica.com/92/198892-050-BA595DBD/Antonio-Banderas-2015.jpg", name: "Antonio Banderas"),
         Item(photo: "https://i.pinimg.com/564x/19/40/0e/19400ec9b73234c8c550d40b96e3223f.jpg", name: "Mario Casas"),
        ],
      ),
    );
  }
}