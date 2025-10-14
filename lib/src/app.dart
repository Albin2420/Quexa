import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:quexa/src/presentation/screens/Auth/login_screen.dart';
import 'package:quexa/src/presentation/screens/Profilepage/profile_screen.dart';
import 'package:quexa/src/presentation/screens/createTicket/create_ticket_screen.dart';
import 'package:quexa/src/presentation/screens/onBoarding/splashscreen.dart';

class Quexa extends StatelessWidget {
  const Quexa({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      // home: ReportingScreen(url: 'avabsbwjd', description: 'knfewfkwfhreoihforeihre9ih',)
      // home: LoginScreen(),
      home: Createticketscreen(),
    );
  }
}
