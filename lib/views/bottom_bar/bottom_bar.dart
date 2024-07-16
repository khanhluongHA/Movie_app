import 'package:flutter/material.dart';
import 'package:project_watch_movie/commons/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_watch_movie/commons/svg_images.dart';
import 'package:project_watch_movie/views/account/user_page.dart';
import 'package:project_watch_movie/views/favorite/favorite_page.dart';
import 'package:project_watch_movie/views/home/home_page.dart';
import 'package:project_watch_movie/views/shuffle/transfer_page.dart';
import 'package:project_watch_movie/views/ticket/ticket_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _bottomNavIndex = 0;
  // List<bool> _isSelected = [true, false, false];
  List<Widget> pages = const [
    HomePage(),
    FavoritePage(),
    TicketPage(),
    UserPage(),
    TransferPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepPurple,
      body: pages[_bottomNavIndex],
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.white.withOpacity(0.2),
                width: 1,
              ),
            ),
            gradient: const LinearGradient(
              colors: [
                AppColors.deepPurple,
                AppColors.lavenderIndigo,
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 72,
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                _bottomNavIndex = value;
              });
            },
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          SvgImages.svgHome,
                          allowDrawingOutsideViewBox: true,
                          width: 29,
                          height: 29,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          SvgImages.svgFavorite,
                          allowDrawingOutsideViewBox: true,
                          width: 29,
                          height: 29,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          SvgImages.svgTicket,
                          allowDrawingOutsideViewBox: true,
                          width: 29,
                          height: 29,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          SvgImages.svgAccount,
                          allowDrawingOutsideViewBox: true,
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          SvgImages.svgShuffle,
                          allowDrawingOutsideViewBox: true,
                          width: 34,
                          height: 34,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
            ],
          )),
    );
  }
}
