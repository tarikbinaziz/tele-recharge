import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recharge_app/Const/colors.dart';

import '../../Const/font_styles.dart';
import '../../Const/strings.dart';
import '../../Controller/home_controller.dart';
import '../History Screen/history_screen.dart';
import '../Menu Screen/menu_screen.dart';
import 'home_screen.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(
        label: home,
        icon: Icon(Icons.home_outlined),
      ),
      BottomNavigationBarItem(
        label: history,
        icon: Icon(Icons.history),
      ),
      BottomNavigationBarItem(
        label: more,
        icon: Icon(Icons.menu_rounded),
      ),
      // Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [Icon(Icons.home_outlined), Text("Home")],
      // ),
      // Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [Icon(Icons.history), Text("History")],
      // ),
      // Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [Icon(Icons.menu_rounded), Text("Menu")],
      // ),
    ];

    var navBody = [
      const HomeScreen(),
      const HistoryScreen(),
      const MenuScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: Obx(() => navBody.elementAt(controller.currentNavIndex.value)),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 2,
                spreadRadius: 1
              ),
            ],
          ),
          child: BottomNavigationBar(
              elevation: 10,
            currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: golden,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            items: navBarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
        // CurvedNavigationBar(
        //   index: controller.currentNavIndex.value,
        //   backgroundColor: mColor,
        //   buttonBackgroundColor: Colors.white,
        //   animationCurve: Curves.ease,
        //   height: 60,
        //   items: navBarItem,
        //   onTap: (value) {
        //     controller.currentNavIndex.value = value;
        //   },
        // )
      ),
    );
  }
}
