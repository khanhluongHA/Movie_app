import 'package:flutter/material.dart';
import 'package:project_watch_movie/views/bottom_bar/bottom_bar.dart';
import 'package:project_watch_movie/views/home/detail/detail_home_controller.dart';
import 'package:project_watch_movie/views/home/home_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeController(),
        ),
        ChangeNotifierProvider(
          create: (_) => DetailHomeController(),
        ),
      ],
      child: const MaterialApp(
        title: 'Watch movie',
        home: BottomBar(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
