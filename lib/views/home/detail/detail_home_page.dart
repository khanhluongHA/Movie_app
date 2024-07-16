// ignore_for_file: unnecessary_null_comparison
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_watch_movie/commons/app_colors.dart';
import 'package:project_watch_movie/commons/app_images.dart';
import 'package:project_watch_movie/commons/svg_images.dart';
import 'package:project_watch_movie/commons/app_text_style.dart';
import 'package:project_watch_movie/views/home/detail/detail_home_controller.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.slug});
  final String slug;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late DetailHomeController detailHomeController;

  @override
  void initState() {
    super.initState();
    detailHomeController = context.read<DetailHomeController>();
    detailHomeController.getDetailMovie(widget.slug);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          context.watch<DetailHomeController>().detailMovie == null
              ? const SizedBox()
              : Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        context
                                .watch<DetailHomeController>()
                                .detailMovie
                                .posterUrl ??
                            '',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 54, left: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            SvgImages.svgBack,
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          DraggableScrollableSheet(
            builder: (context, scrollController) {
              return SafeArea(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.deepPurple,
                        AppColors.deepBlue,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 2,
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                            .7,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            children: [
                              Text(
                                context
                                        .watch<DetailHomeController>()
                                        .detailMovie
                                        .name ??
                                    '',
                                style: AppTextStyle.textStyleDetail,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                context
                                        .watch<DetailHomeController>()
                                        .detailMovie
                                        .originName ??
                                    '',
                                style: AppTextStyle.textStyleNameContent,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 27),
                              _operationsInWatchMovie(),
                              const SizedBox(height: 16.85),
                              ExpandableText(
                                context
                                        .watch<DetailHomeController>()
                                        .detailMovie
                                        .content ??
                                    '',
                                expandText: 'More',
                                collapseText: 'Hidden',
                                maxLines: 3,
                                style: AppTextStyle.textStyleMainContent,
                                textAlign: TextAlign.justify,
                                linkColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Cast',
                                    style: AppTextStyle.textStyleCast,
                                  ),
                                  Text(
                                    'See All',
                                    style: AppTextStyle.textStyleAll,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              _informationPerformer()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 1,
            expand: true,
            snap: true,
          )
        ],
      ),
    );
  }

  Widget _operationsInWatchMovie() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(.5),
          ),
          child: const Center(
            child: Text(
              'Action',
              style: AppTextStyle.textWhiteS12W700,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 30,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: Colors.white.withOpacity(.5),
          ),
          child: const Center(
            child: Text(
              '16+',
              style: AppTextStyle.textWhiteS12W700,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 60,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.colorItem,
          ),
          child: const Center(
            child: Text(
              'IMDb 8.5',
              style: AppTextStyle.textBlackS12W700,
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Share.share('share');
          },
          child: SvgPicture.asset(
            SvgImages.svgShare,
            width: 22,
            height: 21.15,
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 24,
          height: 24,
          child: Consumer<DetailHomeController>(
            builder: (context, favoriteProvider, child) => GestureDetector(
              onTap: () {
                favoriteProvider.stateFavorite();
              },
              child: SvgPicture.asset(
                SvgImages.svgFavorite,
                // ignore: deprecated_member_use
                color: favoriteProvider.isFavorite ? Colors.red : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _informationPerformer() {
    print(
        "hiii ${context.watch<DetailHomeController>().detailMovie.actor?.length ?? 0}");

    return SizedBox(
      height: 105,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            context.watch<DetailHomeController>().detailMovie.actor?.length ??
                0,
        itemBuilder: (context, index) {
          final actorList =
              context.watch<DetailHomeController>().detailMovie.actor;
          final actorName = actorList != null && index < actorList.length
              ? actorList[index]
              : '';

          print("say hello index: $index}");
          print("${context.watch<DetailHomeController>().detailMovie.actor}");
          return Column(
            children: [
              Container(
                width: 55,
                height: 55,
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.colorItem,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.imagePerformer,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  child: Text(
                    actorName,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textStylePerformer,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
