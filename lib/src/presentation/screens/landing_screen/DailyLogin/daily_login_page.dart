import 'dart:developer';

import 'package:flutter/material.dart';

class DailyLoginPage extends StatelessWidget {
  const DailyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                ReturningWidget(
                  data: 'Daily Login',
                  onPressed: () {
                    log("message");
                  },
                ),
                SizedBox(height: 30),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AttendanceCardWidget(
                      name: 'Amana',
                      logintime: '9.00 am',
                      hours: '7 hours',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
