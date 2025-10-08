import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1widget extends StatelessWidget {
  final data;

  const Button1widget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data,
            style: GoogleFonts.zenDots(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
