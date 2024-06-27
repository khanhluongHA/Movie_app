import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_watch_movie/constant.dart';

class InHomePageTwo extends StatefulWidget {
  const InHomePageTwo({super.key});

  @override
  State<InHomePageTwo> createState() => _InHomePageTwoState();
}

class _InHomePageTwoState extends State<InHomePageTwo> {
  final List<String> performers =
      List.generate(5, (index) => "performers $index");
  List<String> imagePerformer = [
    'assets/images/tra1.webp',
    'assets/images/tra2.webp',
    'assets/images/tra3.jpg',
    'assets/images/tra4.webp',
    'assets/images/tra5.webp',
  ];
  List<String> namePerformer = [
    'Hoàng ',
    'Trà ',
    'Mai ',
    'Quốc ',
    'Minh',
  ];
  List<String> descriptionPerformer = [
    'Việt Hưng',
    'Sơn Trà',
    'Minh Mai',
    'Đỗ Uyên',
    'Thanh Thảo'
  ];
  List<String> nameRole = ['Hải', 'Hiếu', 'vinh', 'Nguyễn Ngọc', 'Mai Linh'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'image2',
              child: Image.asset(
                'assets/images/movie2.jpg',
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
        height: 558,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    'Trà',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Phim hài tết 2024',
                    style: TextStyle(
                        color: Colors.white.withOpacity(.3),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
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
                        builder: (context) => const InHomePageTwo(),
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
              height: 5,
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
                        'assets/images/desp2.jpeg',
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
                        'Director: Alice',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white.withOpacity(.7),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Time: 2h36p',
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
            Container(
              height: 50,
              child: Text(
                'Phim điện ảnh Trà của đạo diễn Lê Hoàng thuộc thể loại tâm lý - tình cảm, khai thác một vấn đề hôn nhân vẫn vô cùng “nhức nhối” ở thời điểm hiện tại: Ngoại tình. Bộ phim với sự tham gia diễn xuất của dàn diễn viên thực lực: Việt Hương, NSƯT Trương Minh Quốc Thái cùng tân binh Đoàn Trinh',
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
