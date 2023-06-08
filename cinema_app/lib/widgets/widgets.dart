import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheIconicBackButton extends StatelessWidget {
  const TheIconicBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade500)),
      child: const Center(
          child: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 15,
      )),
    );
  }
}

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade500)),
      child: Image.network(
        imagePath,
        
        // color: Colors.white,
        height: 10,
        width: 10,
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const TheIconicBackButton()),
          const SizedBox(width: 20),
          Text(
            text,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 1)),
          )
        ],
      ),
    );
  }
}

class TheButtons extends StatelessWidget {
  const TheButtons({super.key, required this.text, required this.ontap});
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(color: Colors.white, fontSize: 20)),
          )),
        ),
      ),
    );
  }
}
