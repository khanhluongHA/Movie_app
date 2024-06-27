import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_watch_movie/constant.dart';

class InHomePageThree extends StatefulWidget {
  const InHomePageThree({super.key});

  @override
  State<InHomePageThree> createState() => _InHomePageThreeState();
}

class _InHomePageThreeState extends State<InHomePageThree> {
  final List<String> performers =
      List.generate(5, (index) => "performers $index");
  List<String> imagePerformer = [
    'assets/images/web1.jpeg',
    'assets/images/web2.jpeg',
    'assets/images/web3.jpeg',
    'assets/images/web4.jpg',
    'assets/images/web5.jpg',
  ];
  List<String> namePerformer = [
    'Sydney ',
    'Dakota ',
    'Isabela ',
    'Emma ',
    'Adam',
  ];
  List<String> descriptionPerformer = [
    'Sweeney',
    'Johnson',
    'Merced',
    'Roberts',
    'Scott'
  ];
  List<String> nameRole = ['Julia ', 'Madame', 'Anya ', 'Mary', 'Parker'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'image3',
              child: Image.asset(
                'assets/images/movie3.jpg',
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
        height: 568,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'Madame',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'American Superhero 2024',
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
                        builder: (context) => const InHomePageThree(),
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
                        'assets/images/desp3.jpeg',
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
                        'Director: VIB son',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Time: 2h30p',
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
                'Dakota Johnson plays a new character, a satellite of the ‘Spider-Man’ universe, in a film that arrives during the genre’s lowest point',
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
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                            imagePerformer[index],
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
