import 'package:flutter/material.dart';
import 'package:movies_recommendation/models/mood.dart';
import 'package:movies_recommendation/models/movie.dart';
import 'dart:math';

class RandomMovieScreen extends StatefulWidget {
  final Mood mood;

  const RandomMovieScreen({Key? key, required this.mood}) : super(key: key);

  @override
  _RandomMovieScreenState createState() => _RandomMovieScreenState();
}

class _RandomMovieScreenState extends State<RandomMovieScreen> {
  Movie? selectedMovie;

  void selectRandomMovie() {
    final randomIndex = Random().nextInt(widget.mood.movies.length);
    setState(() {
      selectedMovie = widget.mood.movies[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('${widget.mood.moodName} Movies',
            style: const TextStyle(fontSize: 18, color: Colors.white)),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.white, // color de la flecha para ir hacia atras.
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Seccion con datos del mood
            Stack(
              children: [
                // Background Image
                Image.asset(
                  widget.mood.imagePath,
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
                // Mood Name and Description
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.mood.moodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.mood.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Movie Recommendation Button
            Padding(
              padding: EdgeInsets.zero,
              child: ElevatedButton(
                onPressed: selectRandomMovie,
                child: Text('Recomendarme al azar'),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  textStyle: TextStyle(fontSize: 18),
                  foregroundColor: Color.fromARGB(
                      223, 255, 255, 255), // Color del texto blanco
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.white30, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (selectedMovie != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  selectedMovie!.name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  selectedMovie!.description,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
