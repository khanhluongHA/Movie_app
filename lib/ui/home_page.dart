// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:project_watch_movie/constant.dart';
// import 'package:project_watch_movie/ui/in_home_page.dart';
import 'package:project_watch_movie/ui/in_home_page/in_home_page.dart';
import 'package:project_watch_movie/ui/in_home_page/in_home_page_three.dart';
import 'package:project_watch_movie/ui/in_home_page/in_home_page_two.dart';
import 'package:project_watch_movie/ui/in_home_page_top/in_home_page_three.dart';
import 'package:project_watch_movie/ui/in_home_page_top/in_home_page_top_one.dart';
import 'package:project_watch_movie/ui/in_home_page_top/in_home_page_top_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> homePageTop = const [
    InHomePageTopOne(),
    InHomePageTopTwo(),
    InHomePageTopThree(),
  ];

  List<Widget> homePages = const [
    InHomePage(),
    InHomePageTwo(),
    InHomePageThree()
  ];
  final PageController _pageController = PageController();
  final PageController _pageControllerTwo = PageController();
  final List<String> item = List.generate(3, (index) => "Item $index");
  int currentIndex = 0;
  final List<String> listMovie =
      List.generate(4, (index) => "ListMovie $index");
  // final List<String> imageBottom = List.generate(3, (index) => "image $index");
  final List<String> listMovies =
      List.generate(3, (index) => "listMovies $index");
  List<String> imageTop = [
    'assets/images/imageTop1.png',
    'assets/images/imageTop2.jpg',
    'assets/images/imageTop3.jpg',
  ];
  List<String> nameMovie = ['Deadpool 2', 'Despicable 4', 'Inside out 2'];

  List<String> iconMovie = [
    'assets/images/content1.png',
    'assets/images/content2.png',
    'assets/images/content3.png',
    'assets/images/content4.png',
  ];
  List<String> imageMovie = [
    'assets/images/movie1.jpg',
    'assets/images/movie2.jpg',
    'assets/images/movie3.jpg',
  ];
  List<String> content = [
    'Genres',
    'TV series',
    'Movies',
    'In Theatre',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Constants.secondaryColor, Constants.primaryColor],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello, ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Jana!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Center(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: size.width * .8,
                    // ignore: sort_child_properties_last
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white54.withOpacity(.7),
                        ),
                        Expanded(
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(.7)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.mic,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(.1),
                          Colors.white.withOpacity(.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white.withOpacity(.3)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: const Text(
                    'Most Popular',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: item.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (content) => homePageTop[index],
                            ),
                          );
                        },
                        child: Container(
                          width: 260,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage(
                                imageTop[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.black, Colors.transparent],
                              ),
                            ),
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 10, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      nameMovie[index],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      width: 40,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.amber),
                                      child: const Text(
                                        'IMDb 8.5',
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.white.withOpacity(.5),
                      dotColor: Colors.white.withOpacity(.2),
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listMovie.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 53,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [
                            Colors.white.withOpacity(.4),
                            const Color(0xffA1F3FE).withOpacity(.5),
                          ]),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                iconMovie[index],
                              ),
                              Text(
                                content[index],
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.6),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: const Text(
                    'Upcoming release',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: imageMovie.length,
                    controller: _pageControllerTwo,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 150,
                        // height: 160,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (content) => homePages[index],
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  imageMovie[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageControllerTwo,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.white.withOpacity(.5),
                      dotColor: Colors.white.withOpacity(.2),
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
