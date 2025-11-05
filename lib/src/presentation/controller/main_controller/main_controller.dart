import 'dart:developer';

import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt index = RxInt(0);

  void updatePagefun({required int indexpage}) {
    try {
      index.value = indexpage;
    } catch (e) {
      log("⚠️ Error in updatePagefun():$e");
    }
  }
}
