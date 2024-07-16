import 'package:flutter/material.dart';
import 'package:project_watch_movie/widgets/background_gradient.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return const BackGroundGradient(
      child: Center(
        child: Text(
          'Favorite',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
