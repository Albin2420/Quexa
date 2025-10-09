import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/screens/2.Home/widgets/taskcard_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/albinprofile.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text('Albin', style: GoogleFonts.zenDots(fontSize: 32)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Senior Developer',
                      style: GoogleFonts.zenDots(
                        fontSize: 18,
                        color: Color(0xFF9C9C96),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ongoing Tasks',
                      style: GoogleFonts.zenDots(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return TaskcardWidget(
                      title: 'Frontend Development',
                      description:
                      'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core featuresThe homepage should have an intuitive design with minimal clutter, engaging visuals, and easy-to-use buttons, helping users find what they need instantly. A well-structured homepage improves the overall user experience and keeps users engaged from the very first screen.',
                      deadline: '10/11/2025',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
