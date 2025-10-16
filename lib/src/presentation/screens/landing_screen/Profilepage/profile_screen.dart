import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/screens/landing_screen/Profilepage/widgets/profile_tabs.dart';
import 'package:quexa/src/presentation/widgets/returning_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ReturningWidget(
                  data: 'Profile',
                  onPressed: () {
                    log("message");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/images/rec.png"),
                  ),
                ),
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/images/albinprofile.png',
                        ),
                      ),
                      Positioned(
                        bottom: -4,
                        right: -4,
                        child: Image.asset(
                          'assets/images/camera.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Albin', style: GoogleFonts.zenDots(fontSize: 18)),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
                child: Column(
                  children: [
                    SizedBox(height: 21),
                    ProfileTabs(
                      tabIcon: "assets/images/feedback.png",
                      text: 'Feedback',
                    ),
                    SizedBox(height: 21),
                    ProfileTabs(
                      tabIcon: "assets/images/help.png",
                      text: 'Help',
                    ),
                    SizedBox(height: 21),
                    ProfileTabs(
                      tabIcon: "assets/images/settings.png",
                      text: 'Settings',
                    ),
                    SizedBox(height: 21),
                    ProfileTabs(
                      tabIcon: "assets/images/logout.png",
                      text: 'Logout',
                      col: Colors.red,
                      suffixImg: "assets/images/redArrow.png",
                    ),
                    SizedBox(height: 21),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
