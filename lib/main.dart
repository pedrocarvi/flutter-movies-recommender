import 'package:flutter/material.dart';
import 'package:movies_recommendation/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie recommendation App',
        home: Scaffold(
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.black87,
          body: const SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Homepage(),
                ],
              ),
          // ),
          ),
        )
      );
  }
}
