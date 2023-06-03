import 'package:cinema_app/components/components.dart';
import 'package:cinema_app/components/essentials.dart';
import 'package:cinema_app/data/movies.dart';
import 'package:cinema_app/grids/third_grid.dart';
import 'package:cinema_app/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../grids/first_grid.dart';
import '../grids/second_grid.dart';

class Booking extends StatelessWidget {
  const Booking({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            movie.name,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ))),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MovieDayAndTime(upperText: "Fri", lowerText: "19"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Sat", lowerText: "20"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Sun", lowerText: "21"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Mon", lowerText: "22"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Tue", lowerText: "23"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MovieDayAndTime(upperText: "Ksh.700. 3D", lowerText: "13.00"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Ksh.600. 3D", lowerText: "16.00"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Ksh.700. 3D", lowerText: "18.00"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Ksh.700. 3D", lowerText: "20.00"),
                  SizedBox(
                    width: 10,
                  ),
                  MovieDayAndTime(upperText: "Ksh.800. 3D", lowerText: "22.00"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FirstGrid(),
          ),
          const SizedBox(
            height: 10,
          ),
          const ThirdGrid(),
          const SizedBox(
            height: 10,
          ),
          const SecondGrid(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SeatStatus(text: "Available", color: Colors.pink.shade100),
                SeatStatus(text: "Reserved", color: Colors.blue.shade100),
                SeatStatus(text: "Selected", color: Colors.red.shade600),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const MyButton(buttonName: "Continue")
        ],
      ),
    );
  }
}
