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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Image.asset(
                  scale: 4,
                  "assets/icons/selected/home_selected.png",
                ),
              ),
              Expanded(
                child: Image.asset(
                  scale: 4,
                  "assets/icons/selected/login_selected.png",
                ),
              ),
              Expanded(
                child: Image.asset(
                  scale: 4,
                  "assets/icons/selected/notification_selected.png",
                ),
              ),
              Expanded(
                child: Image.asset(
                  scale: 4,
                  "assets/icons/unselected/profile.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
