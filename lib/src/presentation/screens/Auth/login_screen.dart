import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/screens/Home/home_screen.dart';

import '../../widgets/Button1Widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(1.01, -0.5),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4 + 30,
                  decoration: BoxDecoration(color: Color(0xFFC2FB2A)),
                ),
              ),
              Container(
                width: 50,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFC2FB2A),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8, left: 24),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 35,
                                width: 35,
                                child: Image.asset("assets/images/Q_logo.png"),
                              ),
                            ],
                          ),
                          Container(
                            height: 183,
                            width: 215,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/loginPageImage.png",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 22),
                            child: Column(
                              children: [
                                SizedBox(height: 37),
                                Row(
                                  children: [
                                    SizedBox(width: 12),
                                    Text(
                                      'Username',
                                      style: GoogleFonts.zenDots(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                TextField(
                                  controller: TextEditingController(text: ''),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF2F3F5),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors
                                            .transparent, // invisible border but keeps radius
                                        width: 1,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors
                                            .transparent, // invisible border
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors.black, // visible on focus
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 37),
                                Row(
                                  children: [
                                    SizedBox(width: 12),
                                    Text(
                                      'Password',
                                      style: GoogleFonts.zenDots(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                TextField(
                                  controller: TextEditingController(text: ''),
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF2F3F5),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors
                                            .transparent, // invisible border but keeps radius
                                        width: 1,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors
                                            .transparent, // invisible border
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      borderSide: BorderSide(
                                        color: Colors.black, // visible on focus
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 7),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Forgot Password ?',
                                      style: GoogleFonts.zenDots(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 23),
                                Button1widget(
                                  data: "Login",
                                  onPressed: () {
                                    Get.to(() => Homescreen());
                                  },
                                ),
                                SizedBox(height: 23),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 282,
                        height: 50,
                        child: Text(
                          'By clicking on Login, you agree to our Terms & Conditions of Use',
                          style: GoogleFonts.zenDots(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
