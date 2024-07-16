import 'package:flutter/material.dart';
import 'package:project_watch_movie/widgets/background_gradient.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return const BackGroundGradient(
      child: Center(
        child: Text(
          'Ticket',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
