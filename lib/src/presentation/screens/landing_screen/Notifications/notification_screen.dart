import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quexa/src/presentation/widgets/notification_card_widget.dart';
import 'package:quexa/src/presentation/widgets/returning_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                const SizedBox(height: 10),
                ReturningWidget(
                  data: 'Create Ticket',
                  onPressed: () {
                    log("message");
                  },
                ),
                SizedBox(height: 30),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Notificationcardwidget(
                      name: 'Amana',
                      reason: 'Request for leave for Satarday',
                      date: '12/12/12',
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
