import 'package:flutter/material.dart';
import 'package:flutter_application_movie_actors_details/model/movie_list_response/result.dart';
import 'package:flutter_application_movie_actors_details/widget/movie_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MovieListScreem extends StatefulWidget {
  final List<Result> movieList;
  const MovieListScreem({super.key, required this.movieList});

  @override
  State<MovieListScreem> createState() => _MovieListScreemState();
}

class _MovieListScreemState extends State<MovieListScreem> {
  bool _eneable= true;

  @override
  void initState(){
    super.initState();
    _loadData();
  }
  Future<void> _loadData() async{
    await Future.delayed(const Duration (seconds: 1));
    
    setState(() {
    _eneable= false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _eneable,
      child: ListView.builder(
        itemCount: widget.movieList.length,
        itemBuilder: (context, index){
          return MovieItem(movie: widget.movieList[index]);
        },
      ),
    );
  }
}