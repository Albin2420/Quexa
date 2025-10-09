import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button1widget extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;
  const Button1widget({
    super.key,
    required this.data,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.only(top: 18,bottom: 18),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data,
              style: GoogleFonts.zenDots(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
