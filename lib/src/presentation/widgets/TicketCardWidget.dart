import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ticketcardwidget extends StatelessWidget {
  final String name;
  final String task;
  final  String date;
  const Ticketcardwidget({
    super.key,
    required this.name,
    required this.task,
    required this.date,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 353,
      width: double.infinity,
      height: 93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/defaultprofile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 9),
            Expanded( // Wrap the Column with Expanded
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.zenDots(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Task: ',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          task,
                          style: GoogleFonts.zenDots(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Assigned Date:',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                         date,
                          style: GoogleFonts.zenDots(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



