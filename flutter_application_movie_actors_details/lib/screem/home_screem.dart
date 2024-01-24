import 'package:flutter/material.dart';
import 'package:flutter_application_movie_actors_details/model/movie_list_response/movie_list_response.dart';
import 'package:flutter_application_movie_actors_details/screem/movie_screem.dart';
import 'package:http/http.dart' as http;

Future<MovieListResponse> fetchMovies() async{
  final response= await http.get(Uri.parse(
    'https://api.themoviedb.org/3/movie/popular?api_key=c1145bae31c48bd921e13ad767b7fb3a'));
    if(response.statusCode == 200){
      return MovieListResponse.fromJson(response.body);
    } else{
      throw Exception('Failed to load the movies');
    }
}
class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

class _HomeScreemState extends State<HomeScreem> {
  int _selectedScreem=0;
  late Future<MovieListResponse> movieList;
  @override
  void initState(){
    super.initState();
    movieList= fetchMovies();
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedScreem= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies and popular Actors'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Migueeee')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Vuelve mejor pa la otra'),
                    ),
                    body: const Center(
                      child: Text(
                        'Que miras curiosito',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedScreem,
        children: <Widget>[
          FutureBuilder<MovieListResponse>(
            future: movieList, 
            builder: (context, snapshot){
              if(snapshot.hasData){
                return MovieListScreem(movieList: snapshot.data!.results!);
              }else if(snapshot.hasError){
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.people),
          label: 'Actors',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.movie),
          label: 'Movies',
          ),
        ],
        currentIndex: _selectedScreem,
        selectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}