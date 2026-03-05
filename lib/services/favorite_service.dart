import '../models/movie.dart';

class FavoriteService {
  static final List<Movie> _favorites = [];

  static List<Movie> get favorites => _favorites;

  static void toggleFavorite(Movie movie) {
    if (_favorites.any((m) => m.id == movie.id)) {
      _favorites.removeWhere((m) => m.id == movie.id);
    } else {
      _favorites.add(movie);
    }
  }

  static bool isFavorite(Movie movie) {
    return _favorites.any((m) => m.id == movie.id);
  }
}
