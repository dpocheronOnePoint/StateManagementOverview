import 'dart:convert';

// service helper for loading json file
import 'package:flutter/services.dart' as rootbundle;

class MovieService {
  Future<List<dynamic>> fetchMovies() async {
    await Future.delayed(const Duration(seconds: 1));
    // Load json data
    final moviesData =
        await rootbundle.rootBundle.loadString('data/movies.json');
    // Decode json data to list
    return json.decode(moviesData) as List<dynamic>;
  }
}
