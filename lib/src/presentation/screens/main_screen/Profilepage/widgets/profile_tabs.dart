import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTabs extends StatelessWidget {
  final String tabIcon;
  final String text;
  final Color? col;
  final String? suffixImg;
  const ProfileTabs({
    super.key,
    required this.tabIcon,
    required this.text,
    this.col,
    this.suffixImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(tabIcon)),
            ),
          ),
          SizedBox(width: 13),
          Text(text, style: GoogleFonts.zenDots(fontSize: 16, color: col)),
          Spacer(),
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  suffixImg != null
                      ? suffixImg! // if passed, use this
                      : 'assets/images/arrow.png', // else fallback
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
