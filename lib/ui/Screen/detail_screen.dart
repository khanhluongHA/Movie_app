import 'package:flutter/material.dart';
import 'package:project_watch_movie/constant.dart';
// import 'package:project_watch_movie/constant.dart';
// import 'package:project_watch_movie/model/movie.dart';
import 'package:project_watch_movie/ui/controller/movie_controller.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  image: AssetImage('assets/images/back.png'),
                  color: Colors.amber,
                ),
              ),
            ),
            expandedHeight: 400,
            // backgroundColor: Colors.amber,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              
            ),
          ),
        ],
      ),
    );
  }
}
