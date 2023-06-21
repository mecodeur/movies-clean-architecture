import 'package:flutter/material.dart';
import 'package:movies_clean_architecture_test/core/utils/service_locator.dart';
import 'package:movies_clean_architecture_test/presentation/pages/home_page/movie_home_page.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const MovieHomePage(),
    );
  }
}
