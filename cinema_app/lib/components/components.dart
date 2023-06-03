import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImageSlider extends StatelessWidget {
  const CarouselImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        "https://images.unsplash.com/photo-1595769816263-9b910be24d5f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=879&q=80",
        "https://images.unsplash.com/photo-1588336443962-49d88df004a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=930&q=80",
        "https://images.unsplash.com/photo-1572177191856-3cde618dee1f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80",
      ].map((e) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(e), fit: BoxFit.cover),
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20)),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}

class DurationAndRating extends StatelessWidget {
  const DurationAndRating(
      {super.key, required this.icon, required this.detail});
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String detail;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        Text(detail)
      ],
    );
  }
}

class MovieDayAndTime extends StatefulWidget {
  const MovieDayAndTime(
      {super.key, required this.upperText, required this.lowerText});
  final String upperText;
  final String lowerText;

  @override
  State<MovieDayAndTime> createState() => _MovieDayAndTimeState();
}

class _MovieDayAndTimeState extends State<MovieDayAndTime> {
  //always declare these boolean variables inside the State
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.red : Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                widget.upperText,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.lowerText,
                style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
