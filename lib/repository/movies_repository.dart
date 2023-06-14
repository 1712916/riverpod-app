import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/provider/dio_provider.dart';

part 'movies_repository.g.dart';

@riverpod
Future<String> movie(
  MovieRef ref, {
  required int movieId,
}) {
  return ref.watch(moviesRepositoryProvider).movie(movieId: movieId);
}

@riverpod
Future<List<String>> movies(MoviesRef ref) {
  return ref.watch(moviesRepositoryProvider).searchMovies(page: 1);
}

@riverpod
MoviesRepository moviesRepository(MoviesRepositoryRef ref) => MoviesRepository(
      client: ref.watch(dioProvider), // the provider we defined above
      apiKey: 'Env.tmdbApiKey', // a constant defined elsewhere
    );

class MoviesRepository {
  MoviesRepository({required this.client, required this.apiKey});
  final Dio client;
  final String apiKey;

  // search for movies that match a given query (paginated)
  Future<List<String>> searchMovies({required int page, String query = ''}) async {
    return List.generate(10, (index) => 'movie $index');
  }

  // get the "now playing" movies (paginated)
  Future<List<String>> nowPlayingMovies({required int page}) async {
    return [];
  }

  // get the movie for a given id
  Future<String> movie({required int movieId}) async {
    return '$movieId';
  }
}
