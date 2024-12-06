import 'package:basic_movieapp_mvvm_learnings/constants/my_app_theme_data.dart';
import 'package:basic_movieapp_mvvm_learnings/service/init_getit.dart';
import 'package:basic_movieapp_mvvm_learnings/service/navigation_service.dart';
import 'package:basic_movieapp_mvvm_learnings/view/screens/favorites_screen.dart';
import 'package:basic_movieapp_mvvm_learnings/view/screens/movie_details.dart';
import 'package:basic_movieapp_mvvm_learnings/view/screens/movie_screen.dart';
import 'package:basic_movieapp_mvvm_learnings/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  SetUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorkey,
      debugShowCheckedModeBanner: false,
      title: "Movies App",
      theme: MyThemeData.lightTheme,
      home: const MovieScreen(),
    );
  }
}
