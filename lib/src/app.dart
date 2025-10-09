import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:quexa/src/presentation/screens/0.onBoarding/splashscreen.dart';
import 'package:quexa/src/presentation/screens/1.Login/login_screen.dart';
import 'package:quexa/src/presentation/screens/3.onGoingTask/description_screen.dart';
import 'package:quexa/src/presentation/screens/4.CreateTicket/create_ticket_screen.dart';


class Quexa extends StatelessWidget {
  const Quexa({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      home: Splashscreen(),
    );
  }
}
