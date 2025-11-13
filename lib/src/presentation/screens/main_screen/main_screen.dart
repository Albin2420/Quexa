import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quexa/src/presentation/controller/main_controller/main_controller.dart';
import 'package:quexa/src/presentation/screens/main_screen/DailyLogin/daily_login_page.dart';
import 'package:quexa/src/presentation/screens/main_screen/Home/home_screen.dart';
import 'package:quexa/src/presentation/screens/main_screen/Notifications/notification_screen.dart';
import 'package:quexa/src/presentation/screens/main_screen/Profilepage/profile_screen.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final index = [
      Homescreen(),
      DailyLoginPage(),
      NotificationScreen(),
      ProfileScreen(),
    ];
    final ctrl = Get.put(MainController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        return index[ctrl.index.value];
      }),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.white,
          height: 71,
          padding: EdgeInsets.only(top: 9, bottom: 14),
          child: Obx(() {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.updatePagefun(indexpage: 0);
                    },
                    child: Image.asset(
                      scale: 4,
                      ctrl.index.value == 0
                          ? "assets/icons/selected/home_selected.png"
                          : "assets/icons/unselected/home.png",
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.updatePagefun(indexpage: 1);
                    },
                    child: Image.asset(
                      scale: 4,
                      ctrl.index.value == 1
                          ? "assets/icons/selected/login_selected.png"
                          : "assets/icons/unselected/login.png",
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.updatePagefun(indexpage: 2);
                    },
                    child: Image.asset(
                      scale: 4,
                      ctrl.index.value == 2
                          ? "assets/icons/selected/notification_selected.png"
                          : "assets/icons/unselected/notification.png",
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.updatePagefun(indexpage: 3);
                    },
                    child: Image.asset(
                      scale: 4,
                      ctrl.index.value == 3
                          ? "assets/icons/selected/profile_selected.png"
                          : "assets/icons/unselected/profile.png",
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
