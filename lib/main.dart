import 'package:flutter/material.dart';
import 'package:moves_app/movies/presentation/screens/movies_screen.dart';

import 'core/services.dart';
import 'core/utils/app_string.dart';

void main() {
  ServicesLocator().init() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.transparent
      ),
      home:   const MoviesScreen(),
    );
  }
}

