import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_watch_movie/constant.dart';
import 'package:project_watch_movie/ui/controller/movie_controller.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.slug});
  final String slug;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  late MovieController movieController;
  @override
  void initState() {
    super.initState();
    movieController = context.read<MovieController>();
    movieController.getDetailMovie(widget.slug);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // ignore: unnecessary_null_comparison
          context.watch<MovieController>().detailMovie == null
              ? const SizedBox()
              : Container(
                  // ignore: sort_child_properties_last
                  child: Container(
                    padding: const EdgeInsets.only(top: 54, left: 50),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Back.svg',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        context
                                .watch<MovieController>()
                                .detailMovie
                                .posterUrl ??
                            '',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Constants.secondaryColor,
                          Constants.primaryColor,
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          width: 40,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.7),
                          ),
                        ),
                        Text(
                          context.watch<MovieController>().detailMovie.name ??
                              '',
                          style: const TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          context
                                  .watch<MovieController>()
                                  .detailMovie
                                  .originName ??
                              '',
                          style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(.5),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Action',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 38,
                                height: 23,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Colors.white.withOpacity(.5),
                                ),
                                child: const Center(
                                  child: Text(
                                    '16+',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 73,
                                height: 22.91,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber,
                                ),
                                child: const Center(
                                  child: Text(
                                    'IMDb 8.5',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/images/share.svg',
                                width: 24,
                                height: 22.15,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/images/Favorite.svg',
                                  width: 30,
                                  height: 23,
                                  color: isFavorite ? Colors.red : null,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.85,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            context
                                    .watch<MovieController>()
                                    .detailMovie
                                    .content ??
                                '',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              fontSize: 20,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cast',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'See All',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: context
                                .watch<MovieController>()
                                .detailMovie
                                .actor
                                ?.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 100,
                                  ),
                                  Container(
                                    width: 46,
                                    height: 50,
                                    child: Text(
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      context
                                              .watch<MovieController>()
                                              .detailMovie
                                              .actor?[index] ??
                                          '',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            initialChildSize: 0.6,
            minChildSize: 0.1,
            maxChildSize: 0.8,
          ),
        ],
      ),
    );
  }
}
