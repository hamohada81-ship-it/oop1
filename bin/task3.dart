class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, [this.rating = "PG"]);
}

List<Movie> getPG(List<Movie> movies) {
  List<Movie> result = [];
  for (Movie m in movies) {
    if (m.rating.contains("PG")) {
      result.add(m);
    }
  }
  return result;
}

void main() {
  Movie casino = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie defaultMovie = Movie("Some Movie", "Some Studio");

  List<Movie> movies = [casino, defaultMovie];

  List<Movie> pgMovies = getPG(movies);

  for (Movie m in pgMovies) {
    print("${m.title} - ${m.studio} - ${m.rating}");
  }
}