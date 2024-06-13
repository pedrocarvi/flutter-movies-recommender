import 'package:flutter/material.dart';
import 'package:movies_recommendation/components/moods_grid.dart';
import 'package:movies_recommendation/models/mood.dart';
import 'package:movies_recommendation/models/movie.dart';
// import '../components/array_w_objects.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Mood> moods = [
      Mood(
        moodName: 'Sigma',
        description: 'Personajes con una percepcion distinta al resto.',
        imagePath: 'assets/images/sigma_image.png',
        movies: [
          Movie(
            name: 'Batman',
            description: 'A dark and gritty superhero film.',
            platform: 'Netflix',
            duration: '2h 32m',
          ),
          Movie(
            name: 'The Fight Club',
            description: 'A film about an underground fight club.',
            platform: 'Amazon Prime',
            duration: '2h 19m',
          ),
          Movie(
            name: 'Drive',
            description: 'Ryan Gosling as a highly talented car driver.',
            platform: 'Amazon Prime',
            duration: '2h 19m',
          ),
        ],
      ),
      Mood(
        moodName: 'Entrepeneur',
        description: 'Historias emprendedoras y exitosas.',
        imagePath: 'assets/images/entrepreneur_image.png',
        movies: [
          Movie(
            name: 'Jobs',
            description: 'Pequeña biografia de Steve Jobs.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The social network',
            description: 'Pequeña historia de la demanda hacia Facebook.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The Wolf of Wall Street',
            description:
                'Leo Di Caprio convirtiendose en un millonario estafador de la bolsa',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
        ],
      ),
      Mood(
        moodName: 'Geek',
        description: 'Aficionados a la ciencia ficción y ciencia en general.',
        imagePath: 'assets/images/geek_image.png',
        movies: [
          Movie(
            name: 'Star Wars',
            description: 'Aventuras y luchas en la galaxia.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The Avengers',
            description: 'Superheroes que salvan al mundo',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The Matrix',
            description:
                'Neo se despierta y empieza a ver el mundo tal cual es.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
        ],
      ),
      Mood(
        moodName: 'In love',
        description: 'Historias de amor con final incierto',
        imagePath: 'assets/images/romantic_image.png',
        movies: [
          Movie(
            name: 'The notebook',
            description: 'Dos enamorados que buscan armar su relacion',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'La la land',
            description: 'Un cantante y una actriz se enamoran.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'Titanic',
            description:
                'La historia de amor que sucede en el emblematico barco',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
        ],
      ),
      Mood(
        moodName: 'Mind-bending',
        description: 'Peliculas psicológicas que te hacen quedar flasheando',
        imagePath: 'assets/images/mindbending_image.png',
        movies: [
          Movie(
            name: 'Pienso en el final',
            description:
                'Lucy piensa en el final de todo y en el sentido de las cosas',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'La isla siniestra',
            description: 'Un detective va a investigar un caso en una isla.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'La naranja mecanica',
            description: 'Un mundo distinto',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
        ],
      ),
      Mood(
        moodName: 'Nostalgico',
        description: 'Peliculas para recordar los viejos tiempos',
        imagePath: 'assets/images/nostalgic_image.png',
        movies: [
          Movie(
            name: 'Volver al futuro',
            description: 'Un chico vuelve al pasado y al futuro',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The Avengers',
            description: 'Superheroes que salvan al mundo',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
          Movie(
            name: 'The Matrix',
            description:
                'Neo se despierta y empieza a ver el mundo tal cual es.',
            platform: 'HBO Max',
            duration: '2h 16m',
          ),
        ],
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.blueGrey, width: 1)),
            width:
                MediaQuery.of(context).size.width > 500 ? 500 : double.infinity,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            constraints: const BoxConstraints(
              maxHeight: double.infinity, // Establece el alto mínimo para que se ajuste al contenido
            ),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Recomendador de películas',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center),
                  SizedBox(height: 10),
                  Text(
                      'Elegí tu mood y deja que el destino te lleve a \n la película que tenes que ver',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white70),
                      textAlign: TextAlign.center)
                ]),
          ),
          // SizedBox(height: 12),
          // Container(
          //   decoration: BoxDecoration(
          //       border: Border.all(color: Colors.blueAccent, width: 3.0)),
          //   width:
          //       MediaQuery.of(context).size.width > 500 ? 500 : double.infinity,
          //   padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          //   constraints: const BoxConstraints(
          //     maxHeight: double.infinity, // Establece el ancho mínimo para que se ajuste al contenido
          //   ),
          //   child: ArrayWithObjects(),
          // ),
          SizedBox(height: 20),
          Container(
            // decoration: BoxDecoration(
            //     border: Border.all(color: Colors.blueGrey, width: 1)),
            width:
                MediaQuery.of(context).size.width > 500 ? 500 : double.infinity,
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            child: MoodsGrid(moods: moods),
          )
        ],
      ),
    );
  }
}
