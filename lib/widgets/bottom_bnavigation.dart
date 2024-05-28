import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:washmyclothes/home/home_page.dart';
import 'package:washmyclothes/notification/notification.dart';
import 'package:washmyclothes/order/order_page.dart';
import 'package:washmyclothes/profile/profile.dart';

import 'package:washmyclothes/utils/constant/colors.dart';
import 'package:washmyclothes/utils/constant/imagename.dart';
import 'package:washmyclothes/utils/constant/textstyle.dart';

// ignore: must_be_immutable
class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [
    Homepage(),
    const OrdersPage(),
    const NotificationPage(),
    profilePage()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //_children[0],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNanbar(),
          ),
        ],
      ),
    );
  }

  Widget bottomNanbar() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: h2TextStyle(AppColors.secondarymainColor),
          unselectedLabelStyle: h2TextStyle(AppColors.primarytextColor),
          iconSize: 20.sp,
          //backgroundColor: AppColors.primaryWhiteColor,
          elevation: 10,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedItemColor: AppColors.secondarymainColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Imagecall.b1),
                ),
                label: "Home",
                backgroundColor: AppColors.primaryGreyColor),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imagecall.b1),
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Imagecall.b1),
              ),
              label: "Notification",
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(Imagecall.b1),
                ),
                label: 'Profile',
                backgroundColor: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }

  bool back = false;
  int time = 0;
  int duration = 1000;
  Future<bool> _onbackbuttondoubleClick(BuildContext context) async {
    int now = DateTime.now().millisecondsSinceEpoch;
    if (back && time >= now) {
      back = false;
      exit(0);
    } else {
      time = DateTime.now().millisecondsSinceEpoch + duration;

      back = true;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
          backgroundColor: AppColors.primarymainColor,
          elevation: 4,
          width: 220.w,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: AppColors.primarymainColor,
                child: Image.asset(
                  "assets/images/logomain.jpg",
                  height: 20.h,
                  width: 20.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Press back again to exit",
              ),
            ],
          )));
    }
    return false;
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:washmyclothes/home/home_page.dart';
// import 'package:washmyclothes/notification/notification.dart';
// import 'package:washmyclothes/order/order_page.dart';
// import 'package:washmyclothes/profile/profile.dart';
// import 'package:washmyclothes/utils/constant/colors.dart';
// import 'package:washmyclothes/utils/constant/textstyle.dart';

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;

//   final List<Widget> _children = [
//     Homepage(),
//     const OrdersPage(),
//     const NotificationPage(),
//     profilePage()
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(10.r),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//         ),
//         child: BottomNavigationBar(
//           onTap: _onItemTapped,
//           type: BottomNavigationBarType.fixed,
//           selectedLabelStyle: h2TextStyle(AppColors.secondarymainColor),
//           unselectedLabelStyle: h2TextStyle(AppColors.primarytextColor),
//           iconSize: 20.sp,
//           backgroundColor: AppColors.primaryWhiteColor,
//           elevation: 10,
//           selectedFontSize: 10,
//           unselectedFontSize: 10,
//           currentIndex: _currentIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: 'Order',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.notifications),
//               label: 'Notification',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               label: 'Account',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Bottomnavbar extends StatefulWidget {
  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _currentIndex = 0;

  List<Widget> pageData = [
    Homepage(),
    OrdersPage(),
    NotificationPage(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: pageData[_currentIndex],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar(),
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      padding: EdgeInsets.all(10.r),
      margin: EdgeInsets.only(left: 15.r, right: 15.r, bottom: 15.r),
      decoration: BoxDecoration(
        color: AppColors.primaryWhiteColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F292929),
            blurRadius: 14.40,
            offset: Offset(1, 2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x302196F3),
            blurRadius: 31.30,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: BottomNavigationBar(
        selectedLabelStyle: textregular(AppColors.secondarymainColor),
        unselectedLabelStyle: textregular(AppColors.primarytextColor),
        selectedItemColor: AppColors.secondarymainColor,
        currentIndex: _currentIndex,
        backgroundColor: Colors.transparent,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0.r),
              child: const ImageIcon(
                AssetImage(Imagecall.home),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0.r),
              child: const ImageIcon(
                AssetImage(Imagecall.order),
              ),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0.r),
              child: const ImageIcon(
                AssetImage(Imagecall.notice),
              ),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(5.0.r),
              child: const ImageIcon(
                AssetImage(Imagecall.profile),
              ),
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
