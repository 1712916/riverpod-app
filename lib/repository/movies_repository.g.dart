// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$movieHash() => r'9dec6328bf90b9cfb5feecf7c7b1ccd3e64b1e9b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef MovieRef = AutoDisposeFutureProviderRef<String>;

/// See also [movie].
@ProviderFor(movie)
const movieProvider = MovieFamily();

/// See also [movie].
class MovieFamily extends Family<AsyncValue<String>> {
  /// See also [movie].
  const MovieFamily();

  /// See also [movie].
  MovieProvider call({
    required int movieId,
  }) {
    return MovieProvider(
      movieId: movieId,
    );
  }

  @override
  MovieProvider getProviderOverride(
    covariant MovieProvider provider,
  ) {
    return call(
      movieId: provider.movieId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'movieProvider';
}

/// See also [movie].
class MovieProvider extends AutoDisposeFutureProvider<String> {
  /// See also [movie].
  MovieProvider({
    required this.movieId,
  }) : super.internal(
          (ref) => movie(
            ref,
            movieId: movieId,
          ),
          from: movieProvider,
          name: r'movieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$movieHash,
          dependencies: MovieFamily._dependencies,
          allTransitiveDependencies: MovieFamily._allTransitiveDependencies,
        );

  final int movieId;

  @override
  bool operator ==(Object other) {
    return other is MovieProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$moviesHash() => r'c4d5b3e3bbd4ebc3b2e0d875194caf5a7c719384';

/// See also [movies].
@ProviderFor(movies)
final moviesProvider = AutoDisposeFutureProvider<List<String>>.internal(
  movies,
  name: r'moviesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MoviesRef = AutoDisposeFutureProviderRef<List<String>>;
String _$moviesRepositoryHash() => r'39aa66a193c07820b29bf4f04b62bfddd99f31bf';

/// See also [moviesRepository].
@ProviderFor(moviesRepository)
final moviesRepositoryProvider = AutoDisposeProvider<MoviesRepository>.internal(
  moviesRepository,
  name: r'moviesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$moviesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MoviesRepositoryRef = AutoDisposeProviderRef<MoviesRepository>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
