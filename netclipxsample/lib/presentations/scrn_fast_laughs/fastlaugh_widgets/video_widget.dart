import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/variables/videos.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/actions_and_volume_buttons.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:video_player/video_player.dart';

ValueNotifier<bool> playNotifier = ValueNotifier(true);

class FastLaghsVideoWidget extends StatefulWidget {
  final int index;
  const FastLaghsVideoWidget({super.key, required this.index});

  @override
  State<FastLaghsVideoWidget> createState() => _FastLaghsVideoWidgetState();
}

class _FastLaghsVideoWidgetState extends State<FastLaghsVideoWidget> {
  //
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        dummyVideoUrls[widget.index % dummyVideoUrls.length])
      ..initialize().then((_) {
        setState(() {});
        playNotifier.value == true
            ? videoPlayerController.play()
            : videoPlayerController.pause();
        volumeNotifier.value == true
            ? videoPlayerController.setVolume(1.0)
            : videoPlayerController.setVolume(0.0);
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// video player
        Center(
          child: videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController),
                )
              : const SizedBox(),
        ),

        /// Action buttons, Avatar
        FastLaughsActionButtons(
          index: widget.index,
          videoPlayerController: videoPlayerController,
        ),

        /// volume buttton
        FastLaughsVolumeButton(videoPlayerController: videoPlayerController),
      ],
    );
  }
}
