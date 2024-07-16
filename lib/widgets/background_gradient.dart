import 'package:flutter/material.dart';
import 'package:project_watch_movie/commons/app_colors.dart';

class BackGroundGradient extends StatelessWidget {
  const BackGroundGradient({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.deepBlue,
              AppColors.deepPurple,
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
