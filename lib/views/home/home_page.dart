import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_watch_movie/commons/app_colors.dart';
import 'package:project_watch_movie/commons/app_gradient_colors.dart';
import 'package:project_watch_movie/commons/svg_images.dart';
import 'package:project_watch_movie/commons/app_text_style.dart';
import 'package:project_watch_movie/model/list_content.dart';
import 'package:project_watch_movie/views/home/detail/detail_home_page.dart';
import 'package:project_watch_movie/views/home/home_controller.dart';
import 'package:project_watch_movie/widgets/background_gradient.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = context.read<HomeController>();
    homeController.getDataMovieInformation();
  }

  final PageController _pageController = PageController();
  final PageController _pageControllerTwo = PageController();
  final CarouselController _carouselController = CarouselController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackGroundGradient(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 78,
                right: 64,
                left: 64,
              ),
              child: Row(
                children: [
                  const Text(
                    'Hello, ',
                    style: AppTextStyle.textStyleSayHello,
                  ),
                  const Text(
                    'Jana!',
                    style: AppTextStyle.textWhiteS18W700,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    SvgImages.svgBell,
                    height: 22,
                    width: 22,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white.withOpacity(.2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    SvgImages.svgSearch,
                    width: 22,
                    height: 22,
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Text(
                        'Search',
                        style: AppTextStyle.textStyleSearch,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  SvgPicture.asset(
                    SvgImages.svgMic,
                    width: 16,
                    height: 22,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 33,
              ),
              child: Text(
                'Most Popular',
                style: AppTextStyle.textWhiteS18W700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            _buildMovieInformationWidget(),
            const SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0;
                    i < context.watch<HomeController>().movieInformation.length;
                    i++,)
                  Container(
                    height: 8,
                    width: 8,
                    margin: const EdgeInsets.all(
                      4.3,
                    ),
                    decoration: BoxDecoration(
                      color: homeController.currentIndex == i
                          ? AppGradientColors.dotGradient.colors.first
                              .withOpacity(.8)
                          : AppGradientColors.dotGradientExtra.colors.first
                              .withOpacity(.3),
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildContentWidget(),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 33,
              ),
              child: Text(
                'Upcoming releases',
                style: AppTextStyle.textWhiteS18W700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    context.watch<HomeController>().movieInformation.length,
                controller: _pageControllerTwo,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 165,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              slug: context
                                      .watch<HomeController>()
                                      .movieInformation[index]
                                      .slug ??
                                  '',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              context
                                      .watch<HomeController>()
                                      .movieInformation[index]
                                      .posterUrl ??
                                  '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        margin: const EdgeInsets.only(right: 19),
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
                count:
                    context.watch<HomeController>().movieInformation.length ~/
                        2,
                effect: JumpingDotEffect(
                  activeDotColor: AppGradientColors.dotGradient.colors.first
                      .withOpacity(.8),
                  dotColor: AppGradientColors.dotGradientExtra.colors.first
                      .withOpacity(.3),
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieInformationWidget() {
    return context.watch<HomeController>().movieInformation.isNotEmpty
        ? Consumer<HomeController>(
            builder: (context, value, child) => SizedBox(
              height: 141,
              child: CarouselSlider.builder(
                carouselController: _carouselController,
                itemCount:
                    context.watch<HomeController>().movieInformation.length,
                itemBuilder: (context, index, realIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      width: 328,
                      height: 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                slug: context
                                        .watch<HomeController>()
                                        .movieInformation[index]
                                        .slug ??
                                    '',
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              width: 328,
                              height: 500,
                              imageUrl: context
                                      .watch<HomeController>()
                                      .movieInformation[index]
                                      .posterUrl ??
                                  '',
                              fit: BoxFit.cover,
                            ),
                            Container(
                              height: 141,
                              padding: const EdgeInsets.only(
                                left: 26,
                                bottom: 15,
                                right: 26,
                              ),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black,
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          homeController
                                              .movieInformation[index].name!,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: AppTextStyle.textWhiteS18W700,
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          color: AppColors.colorItem,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'IMDb 8.5',
                                            style: AppTextStyle.textBlackS8W700,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 141,
                  autoPlay: false,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  onPageChanged: (index, reason) {
                    homeController.setStateCurrentIndex(index);
                  },
                ),
              ),
            ),
          )
        : const SizedBox();
  }

  Widget _buildContentWidget() {
    return Container(
      height: 95,
      padding: const EdgeInsets.only(
        right: 33,
        left: 50,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: rowContent.length,
        itemBuilder: (context, index) {
          final content = rowContent[index];
          return Container(
            margin: const EdgeInsets.only(
              right: 17,
            ),
            width: 69,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.white.withOpacity(.3),
              ),
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  AppColors.pastelPurple.withOpacity(.3),
                  AppColors.lightCyan.withOpacity(.3),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    content.imageContent ?? '',
                    width: 29,
                    height: 29,
                  ),
                  Text(
                    content.nameContent ?? '',
                    style: AppTextStyle.textWhiteS9W400,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
