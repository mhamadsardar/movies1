import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  final String name;
  final double rating;
  final String imageUrl;
  final String description;

  MovieDetailScreen({
    required this.name,
    required this.rating,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 45, 2, 82),
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 45, 2, 82),
        title: Text(name,style: TextStyle(letterSpacing: 1),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(1111111)),),
                child: Image.network(imageUrl)),
            ),
            Text(
              'Rating: $rating',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 242, 0)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  description,
                  style: TextStyle(fontSize: 16,color: Colors.white,letterSpacing: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
