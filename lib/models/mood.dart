import "package:movies_recommendation/models/movie.dart";

class Mood {
  final String moodName;
  final String description;
  final String imagePath;
  final List<Movie> movies;

  Mood(
      {required this.moodName,
      required this.description,
      required this.imagePath,
      required this.movies});
}
