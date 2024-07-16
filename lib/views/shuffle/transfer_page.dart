import 'package:flutter/material.dart';
import 'package:project_watch_movie/widgets/background_gradient.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return const BackGroundGradient(
      child: Center(
        child: Text(
          'Shuffle',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
