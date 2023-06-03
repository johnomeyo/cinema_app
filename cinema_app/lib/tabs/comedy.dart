import 'package:flutter/material.dart';

class ComedyTab extends StatelessWidget {
  ComedyTab({super.key});

  final List<String> movies = [
    // "https://images.unsplash.com/photo-1584695039819-4164ec9af8f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=929&q=80"
    //     "https://image.tmdb.org/t/p/w154/smUr18UF4c3vVR86zgGLNNRywfw.jpg",
    // "https://cdn.comedy.co.uk/images/library/comedies/900x450/c/curse_the_poster.jpg",
    // "https://m.media-amazon.com/images/M/MV5BNjcxOTJhZTEtMWFiYi00NTkwLTlkMzktZDQwMGQ0ZjM3YWU2XkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_FMjpg_UX1000_.jpg",
    // "https://www.outfrontmagazine.com/wp-content/uploads/2021/03/Group-Shot-Key-Art-scaled-e1611547095134.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 400,
        child: GridView.builder(
          // itemCount: movies.length,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsetsDirectional.all(8),
              height: 100,
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: NetworkImage(movies[index]), fit: BoxFit.cover),
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
            );
          },
        ),
      ),
    );
  }
}
