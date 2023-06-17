import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../data/data.dart';
import '../drawer/drawer_wd.dart';
import '../movie_item/movie_item_wd.dart';
import '../navbar/nav_bar_wd.dart';
import 'logic/logic.dart';

class WatchListWD extends ConsumerWidget {
  const WatchListWD({Key? key}) : super(key: key);
  static const String routeName = "/watch-list";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<MovieModel> watchList = ref.watch(watchListProvider);

    return Scaffold(
      drawer: const DrawerWD(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWD(),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: watchList.length,
        itemBuilder: (context, index) {
          MovieModel movie = watchList[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                // show details of movie like home
                showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MovieItemWD(movieModel: movie);
                  },
                );
              },
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image.network(
                  movie.poster,
                  scale: 3.4,
                ),
              ),
              title: Text(movie.title),
              trailing: IconButton(
                onPressed: () {
                  ref.read(watchListProvider.notifier).removeMovieByImdbId(movie.imdbId);
                },
                icon: const Icon(Icons.delete_forever_rounded),
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
