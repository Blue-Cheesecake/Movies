import 'package:client/models/movie_model.dart';
import 'package:client/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MovieItemWidget extends StatelessWidget {
  const MovieItemWidget({Key? key, required this.movieModel}) : super(key: key);

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(movieModel.backdrops[0]), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              movieModel.poster,
              scale: 2.4,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 10,
              ),
              child: Text(
                movieModel.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showCupertinoModalBottomSheet(
                context: context,
                builder: (context) {
                  return const VideoPlayerWidget();
                },
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox.shrink(),
        ],
      ),
    );
  }
}
