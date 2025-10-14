import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/Button1Widget.dart';
import 'package:quexa/src/presentation/widgets/button2widget.dart';
import 'package:quexa/src/presentation/screens/onGoingTask/widgets/ticket_card_widget.dart';

import '../../widgets/returning_card.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                ReturningWidget(
                  data: 'Frontend Development',
                  onPressed: () {
                    Get.back();
                  },
                ),
                const SizedBox(height: 30),
                Text(
                  'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features.\n'
                  'The homepage should have an intuitive design with minimal clutter, engaging visuals, and easy-to-use buttons, helping users find what they need instantly. A well-structured homepage improves the overall user experience and keeps users engaged from the very first screen.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'http://www.taskhiveapp.com',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Flexible(
                      child: Button1widget(
                        data: "Create Ticket",
                        onPressed: () {
                          log("descriptionScreen");
                        },
                      ),
                    ),
                    SizedBox(width: 120),
                  ],
                ),
                SizedBox(height: 30),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Ticketcardwidget(
                      name: 'Amana',
                      task: 'Authentication',
                      date: '20/10/2023',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: 3,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: const Color.fromARGB(0, 255, 255, 255),
          margin: EdgeInsets.all(8),
          child: Button2widget(data: 'Submit'),
        ),
      ),
    );
  }
}
