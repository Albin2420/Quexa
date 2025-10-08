import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button2widget extends StatelessWidget {
  final data;

  const Button2widget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFC2FB2A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data,
            style: GoogleFonts.zenDots(fontSize: 19, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
