import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Color IconColor;
  final Color BackgroundColor;
  final IconData icon;
  final String text;

  const CustomButton(
      {super.key,
      required this.IconColor,
      required this.text,
      required this.BackgroundColor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          color: BackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(icon, size: 24, color: IconColor),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                text,
                style: GoogleFonts.poppins(fontSize: 18, color: IconColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
