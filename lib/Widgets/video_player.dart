import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

YoutubePlayerController control = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=0KkpVAwxBE8&list=PLilQOU3a19nX0Vy9OiB7lmLrB5A3BE8Y8")!,
  flags: const YoutubePlayerFlags(
    autoPlay: false,
  ),
);

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: control,
      ),
      builder: (context, player) => Center(
        child: player,
      ),
    );
  }
}
