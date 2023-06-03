import 'package:flutter/material.dart';

class ReleaseDate extends StatelessWidget {
  const ReleaseDate({super.key, required this.releaseDate});
  final String releaseDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Release date",
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          releaseDate,
          style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
        )
      ],
    );
  }
}

class Genre extends StatelessWidget {
  const Genre({super.key, required this.genre});
  final String genre;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Genre",
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFFFDF0CA),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              genre,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
              child: Text(
            buttonName,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )),
        ),
      ),
    );
  }
}

class SeatStatus extends StatelessWidget {
  const SeatStatus({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: color,
        ),
        const SizedBox(width: 10,),
        Text(text,style: const TextStyle(color: Colors.black),),
      ],
    );
  }
}
