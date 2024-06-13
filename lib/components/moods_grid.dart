import 'package:flutter/material.dart';
import 'package:movies_recommendation/models/mood.dart';
import 'package:movies_recommendation/screens/random_movie.dart';

class MoodsGrid extends StatelessWidget {
  final List<Mood> moods;
  const MoodsGrid({Key? key, required this.moods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 250,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: moods.length,
        itemBuilder: (context, index) {
          final mood = moods[index];
          return MoodCard(mood: mood);
        },
      ),
    );
  }
}

class MoodCard extends StatelessWidget {
  final Mood mood;
  const MoodCard({Key? key, required this.mood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RandomMovieScreen(mood: mood),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 5,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                mood.imagePath,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                // gradient: LinearGradient(
                //   colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                //   begin: Alignment.bottomCenter,
                //   end: Alignment.topCenter,
                // ),
              ),
              padding: EdgeInsets.all(11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mood.moodName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    mood.description,
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
