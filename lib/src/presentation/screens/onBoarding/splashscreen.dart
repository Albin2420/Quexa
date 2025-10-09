import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/controller/appstartup_controller/appstartup_controller.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppstartupController());
    return Scaffold(
      backgroundColor: const Color(0xFFC2FB2A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 160,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Q_logo.png'),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text('Quexa', style: GoogleFonts.zenDots(fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
