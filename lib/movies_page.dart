import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/repository/movies_repository.dart';

class MoviesPage extends ConsumerWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies Page'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final v = ref.watch(moviesProvider);
          return v.when(data: (data) {
            return Column(
              children: data.map((e) => Text(e)).toList(),
            );
          }, error: (err, _) {
            return Text('err');
          }, loading: () {
            return const SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(),
            );
          });
        },
      ),
    );
  }
}
