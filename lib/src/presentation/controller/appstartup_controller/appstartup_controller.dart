import 'package:get/get.dart';
import 'package:quexa/src/presentation/screens/Auth/login_screen.dart';

class AppstartupController extends GetxController {
  @override
  void onInit() {
    naviGate();
    super.onInit();
  }

  Future<void> naviGate() async {
    await Future.delayed(Duration(seconds: 1));
    Get.to(() => LoginScreen());
  }
}
