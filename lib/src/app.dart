import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:quexa/src/presentation/screens/onBoarding/splashscreen.dart';

class Quexa extends StatelessWidget {
  const Quexa({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // showPerformanceOverlay: true,
      title: 'Neuflo',
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      home: Splashscreen(),
    );
  }
}
