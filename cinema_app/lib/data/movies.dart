class Movie {
  final String name;
  final String duration;
  final String imdbrating;
  final String releaseDate;
  final String genre;
  final String synopsis;
  final String image;

  const Movie({
    required this.name,
    required this.duration,
    required this.imdbrating,
    required this.releaseDate,
    required this.genre,
    required this.synopsis,
    required this.image,
  });
}

final List<Movie> movies = [
  const Movie(
      name: "Star was: The last Jedi",
      duration: "153 minutes",
      imdbrating: "7.4(IMDb)",
      releaseDate: "December 9, 2017",
      genre: 'Action',
      synopsis:
          "Luke Skywalker's peaceful and solitary existence gets upended when he encounters Rey, a young woman who shows strong signs of the Force. Her desire to learn the ways of the Jedi forces Luke to make a decision that changes their lives forever. Meanwhile, Kylo Ren and General Hux lead the First Order in an all-out assault against Leia and the Resistance for supremacy of the galaxy.",
      image:
          "https://m.media-amazon.com/images/M/MV5BMjQ1MzcxNjg4N15BMl5BanBnXkFtZTgwNzgwMjY4MzI@._V1_FMjpg_UX1000_.jpg"),
  const Movie(
      name: "John Wick: Chapter 4",
      duration: "136 minutes",
      imdbrating: "8.1(IMDb)",
      releaseDate: "24 March 2023",
      genre: "thriller",
      synopsis:
          "With the price on his head ever increasing, legendary hit man John Wick takes his fight against the High Table global as he seeks out the most powerful players in the underworld, from New York to Paris to Japan to Berlin.",
      image:
          "https://dx35vtwkllhj9.cloudfront.net/studiocanalintl/john-wick-chapter-4/images/regions/au/share.jpg"),
  const Movie(
      name: "Guardians of the Galaxy: Vol 3",
      duration: "149 minutes",
      imdbrating: "8.3(IMDb)",
      releaseDate: "4 May 2023",
      genre: "Sci-fi",
      synopsis:
          "Still reeling from the loss of Gamora, Peter Quill must rally his team to defend the universe and protect one of their own. If the mission is not completely successful, it could possibly lead to the end of the Guardians as we know them.",
      image: "https://m.media-amazon.com/images/I/71QZuPYZk4L._AC_SL1200_.jpg")
];
