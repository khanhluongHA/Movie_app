import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_watch_movie/constant.dart';

class InHomePageTopTwo extends StatefulWidget {
  const InHomePageTopTwo({super.key});

  @override
  State<InHomePageTopTwo> createState() => _InHomePageTopTwoState();
}

class _InHomePageTopTwoState extends State<InHomePageTopTwo> {
  final List<String> performers =
      List.generate(5, (index) => "performers $index");
  List<String> imagePerformer = [
    'assets/images/desp1.jpeg',
    'assets/images/desp2.jpeg',
    'assets/images/desp3.jpeg',
    'assets/images/desp4.jpeg',
    'assets/images/desp5.jpeg',
  ];
  List<String> namePerformer = [
    'Will',
    'Steve',
    'Miranda',
    'Madison',
    'Dana',
  ];
  List<String> descriptionPerformer = [
    'Ferrell',
    'Carell',
    'Cosgrove',
    'Polan',
    'Gaier'
  ];
  List<String> nameRole = ['Maxime le', 'gru', 'Margo', 'Agnes', 'Edith'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'image2',
              child: Image.asset(
                'assets/images/des4.jpeg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.undo,
                    size: 20,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _displayBottomSheet(context);
                  },
                  child: Icon(
                    Icons.storage,
                    size: 20,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          gradient: LinearGradient(
            colors: [Constants.secondaryColor, Constants.primaryColor],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 33),
        height: 555,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'Despicable',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Directed by Chris Renaud',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.3),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(.3),
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
                  width: 5,
                ),
                Container(
                  width: 33,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(.3),
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
                  width: 5,
                ),
                Container(
                  width: 68,
                  height: 20,
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
                InkWell(
                  child: const Icon(
                    Icons.reply,
                    size: 24,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InHomePageTopTwo(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.favorite,
                  size: 22,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: 280,

              // color: Colors.amber,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'assets/images/web1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Director: Anna',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Time: 2h15p',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Language: English',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Category: Martial',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Quality: HD',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Year: 2024',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white.withOpacity(.4),
                ),
                gradient: LinearGradient(
                  colors: [
                    Constants.primaryColor.withOpacity(.9),
                    Constants.secondaryColor.withOpacity(.9),
                    Colors.black.withOpacity(.4),
                  ],
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    'Play now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white.withOpacity(.4),
                ),
                gradient: LinearGradient(
                  colors: [
                    Constants.primaryColor.withOpacity(.9),
                    Constants.secondaryColor.withOpacity(.9),
                    Colors.black.withOpacity(.4),
                  ],
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.download,
                    size: 16,
                    color: Colors.white,
                  ),
                  Text(
                    'Download',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 50,
              child: Text(
                'is a 2024 American animated comedy film produced by Illumination and distributed by Universal Pictures. It serves as the sequel to',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(.7),
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cast',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: performers.length,
                itemBuilder: (context, index) {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imagePerformer[index],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          namePerformer[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          descriptionPerformer[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          nameRole[index],
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
