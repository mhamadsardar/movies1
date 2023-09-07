import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'MovieDetailScreen.dart';

class now extends StatefulWidget {
  @override
  _nowState createState() => _nowState();
}

class _nowState extends State<now> {
  List<dynamic> movies = [];

  Future<void> fetchMovies() async {
    final url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=7e66ff8604ba825ea82e8ecd0e36b886');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        movies = json.decode(response.body)['results'];
      });
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load movies');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return
            Container(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 15),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MovieDetailScreen(
                                  name: movies[index]['title'],
                                  rating: movies[index]['vote_average'].toDouble(),
                                  imageUrl:
                                      'https://image.tmdb.org/t/p/w500${movies[index]['poster_path']}',
                                  description: movies[index]['overview'],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500${movies[index]['poster_path']}',
                                ),
                                colorFilter: ColorFilter.mode(
                                    Colors.transparent, BlendMode.dst),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 0),
                      ],
                    ),
                  );
                },
              ),
            );
      
  }
}
