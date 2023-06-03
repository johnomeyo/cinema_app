import 'package:cinema_app/movie_display.dart';
import 'package:flutter/material.dart';

import 'data/movies.dart';

class ActionsTab extends StatelessWidget {
  const ActionsTab({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 400,
        child: GridView.builder(
          itemCount: movies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
             final  Movie movie=movies[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => MovieDisplay(movie: movie))));
              },
              child: Container(
                padding: const EdgeInsetsDirectional.all(8),
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(movie.image),
                        fit: BoxFit.cover),
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          },
        ),
      ),
    );
  }
}
