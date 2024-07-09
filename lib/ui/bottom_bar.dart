import 'package:flutter/material.dart';
import 'package:project_watch_movie/ui/favorite_page.dart';
import 'package:project_watch_movie/ui/home_page.dart';
import 'package:project_watch_movie/ui/ticket_page.dart';
import 'package:project_watch_movie/ui/transfer_page.dart';
import 'package:project_watch_movie/ui/user_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: pages[_bottomNavIndex],
      bottomNavigationBar: Container(

          // color: Colors.white.withOpacity(0.2),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white.withOpacity(0.2), width: 2),
            ),
            gradient: LinearGradient(
              // stops: [0.5, 1],
              colors: [
                Color(0xff6B66A6).withOpacity(0.9),
                Color(0xff75D1DD).withOpacity(0.9),
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
                          'assets/images/Vector.svg',
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
                          'assets/images/Favorite.svg',
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
                          'assets/images/ticket.svg',
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
                          'assets/images/Account.svg',
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
                          'assets/images/shuffle.svg',
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
