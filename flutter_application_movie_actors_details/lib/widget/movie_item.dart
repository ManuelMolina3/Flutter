import 'package:flutter/material.dart';
import 'package:flutter_application_movie_actors_details/model/movie_list_response/result.dart';

class MovieItem extends StatelessWidget {
  final Result movie;
  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/${movie.posterPath}'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(movie.title!),
            ),
          ],
        ),
      ));
  }
}