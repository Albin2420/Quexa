import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceCardWidget extends StatelessWidget {
  final String name;
  final String logintime;
  final String hours;
  const AttendanceCardWidget({
    super.key,
    required this.name,
    required this.logintime,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/defaultprofile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  name,
                  style: GoogleFonts.zenDots(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Login: ',
                  style: GoogleFonts.zenDots(color: Colors.black, fontSize: 14),
                ),
                Text(
                  logintime,
                  style: GoogleFonts.zenDots(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Hours Logged In: ',
                  style: GoogleFonts.zenDots(color: Colors.black, fontSize: 14),
                ),
                Text(
                  '$hours Hrs',
                  style: GoogleFonts.zenDots(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
