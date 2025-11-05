import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeComponent extends StatefulWidget {
  const YoutubeComponent({super.key});

  @override
  State<YoutubeComponent> createState() => _YoutubeComponentState();
}

class _YoutubeComponentState extends State<YoutubeComponent> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: 'N1KquaLFc5M',
      params: const YoutubePlayerParams(showFullscreenButton: true, enableCaption: true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(controller: _controller, aspectRatio: 16 / 9);
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}
