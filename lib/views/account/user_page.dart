import 'package:flutter/material.dart';
import 'package:project_watch_movie/widgets/background_gradient.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return const BackGroundGradient(
      child: Center(
        child: Text(
          'Acount',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
