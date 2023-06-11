import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../data/models/models.dart';
import '../../drawer/page/page.dart';
import '../../movie_item/page/page.dart';
import '../../navbar/page/page.dart';
import '../logic/logic.dart';

class WatchListView extends ConsumerWidget {
  const WatchListView({Key? key}) : super(key: key);
  static const String routeName = "/watch-list";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<MovieModel> watchList = ref.watch(watchListProvider);

    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBarWidget(),
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
                    return MovieItemWidget(movieModel: movie);
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
