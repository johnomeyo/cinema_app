import 'package:cinema_app/components/components.dart';
import 'package:cinema_app/components/essentials.dart';
import 'package:cinema_app/data/movies.dart';
import 'package:cinema_app/pages/cinema_spaces.dart';
import 'package:flutter/material.dart';

// import 'constants.dart';

class MovieDisplay extends StatelessWidget {
  final Movie movie;
  const MovieDisplay({
    super.key,
    required this.movie,
    //  required this.movie
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(movie.image), fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    movie.name,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "4K",
                        style: TextStyle(color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: DurationAndRating(
                          icon: Icons.timelapse, detail: movie.duration)),
                  Expanded(
                      flex: 1,
                      child: DurationAndRating(
                          icon: Icons.star, detail: movie.imdbrating)),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: Colors.grey.shade200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ReleaseDate(releaseDate: movie.releaseDate)),
                Expanded(flex: 1, child: Genre(genre: movie.genre)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Synopsis",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                movie.synopsis,
                style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Booking(movie: movie))));
          },
          child: const MyButton(buttonName: "Buy Ticket")),
    );
  }
}
