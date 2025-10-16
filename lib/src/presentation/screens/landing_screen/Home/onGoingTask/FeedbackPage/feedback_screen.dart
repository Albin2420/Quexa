import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/screens/landing_screen/Home/onGoingTask/FeedbackPage/widgets/feedback_tabs.dart';

import 'package:quexa/src/presentation/widgets/returning_card.dart';

class ReportingScreen extends StatelessWidget {
  final String url;
  final String description;

  const ReportingScreen({
    super.key,
    required this.url,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                ReturningWidget(
                  data: 'Authentication',
                  onPressed: () {
                    log("pressed");
                  },
                ),
                const SizedBox(height: 45),
                // URL Section
                Text(
                  'URL',
                  style: GoogleFonts.zenDots(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      url,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Description Section
                Text(
                  'Description',
                  style: GoogleFonts.zenDots(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    description,
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Colors.black,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            constraints: BoxConstraints(minHeight: 60),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ReportingTabs(
                    text: 'Accept',
                    color: Color(0xFFC2FB2A),
                    textColor: Colors.black,
                    onPressed: () {
                      log("accepted msg");
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ReportingTabs(
                    text: 'Decline',
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      log("declined msg");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
