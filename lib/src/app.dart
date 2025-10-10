import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:quexa/src/presentation/screens/AuthenticationPage/auth_screen.dart';
import 'package:quexa/src/presentation/screens/AuthenticationPage/widgets/auth_tabs.dart';
import 'package:quexa/src/presentation/screens/DailyLogin/daily_login_page.dart';
import 'package:quexa/src/presentation/screens/Notifications/notification_screen.dart';
import 'package:quexa/src/presentation/screens/Profilepage/profile_screen.dart';
import 'package:quexa/src/presentation/screens/createTicket/create_ticket_screen.dart';
import 'package:quexa/src/presentation/screens/onBoarding/splashscreen.dart';
import 'package:quexa/src/presentation/screens/onGoingTask/description_screen.dart';
import 'package:quexa/src/presentation/widgets/returning_card.dart';

class Quexa extends StatelessWidget {
  const Quexa({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
     home: AuthScreen(url: 'http://www.taskhiveapp.com ', description: 'Implementing methods such as passwords, PINs, biometrics (fingerprint, facial recognition), smart cards, or security tokens to verify identities.',),

    );
  }
}
