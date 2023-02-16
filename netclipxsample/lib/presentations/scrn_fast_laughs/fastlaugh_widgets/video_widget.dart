

import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/videos.dart';
import 'package:video_player/video_player.dart';

class FastLaghsVideoWidget extends StatefulWidget {
  final int index;
  const FastLaghsVideoWidget({super.key, required this.index});

  @override
  State<FastLaghsVideoWidget> createState() => _FastLaghsVideoWidgetState();
}

class _FastLaghsVideoWidgetState extends State<FastLaghsVideoWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        dummyVideoUrls[widget.index % dummyVideoUrls.length])
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const SizedBox(),
    );
  }
}

