import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReturningWidget extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;
  const ReturningWidget({
    super.key,
    required this.data,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Row(
          children: [
            Icon(Icons.arrow_back, color: Colors.black),
            SizedBox(width: 8),
            Text(
              data,
              style: GoogleFonts.zenDots(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
