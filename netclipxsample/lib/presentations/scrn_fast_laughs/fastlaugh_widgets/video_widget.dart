import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/variables/videos.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/core/widgets/round_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/fastluagh_action_widgets.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

ValueNotifier<Set<int>> likedNotifier = ValueNotifier({});
ValueNotifier<Set<int>> myListNotifier = ValueNotifier({});
ValueNotifier<bool> playNotifier = ValueNotifier(true);

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
        playNotifier.value == true
            ? _videoPlayerController.play()
            : _videoPlayerController.pause();
        volumeNotifier.value == true
            ? _videoPlayerController.setVolume(1.0)
            : _videoPlayerController.setVolume(0.0);
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: _videoPlayerController.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                )
              : const SizedBox(),
        ),
        FastLaughsActionButtons(
          videoWidget: widget,
          videoPlayerController: _videoPlayerController,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60, left: 5),
            child: ValueListenableBuilder(
              valueListenable: volumeNotifier,
              builder: (BuildContext context, newValue, Widget? child) =>
                  newValue
                      ? RoundIconButton(
                          icon: Icons.volume_up,
                          onPressed: () {
                            _videoPlayerController.setVolume(0.0);
                            volumeNotifier.value = false;
                            volumeNotifier.notifyListeners();
                          },
                        )
                      : RoundIconButton(
                          icon: Icons.volume_off,
                          onPressed: () {
                            _videoPlayerController.setVolume(1.0);
                            volumeNotifier.value = true;
                            volumeNotifier.notifyListeners();
                          },
                        ),
            ),
          ),
        ),
      ],
    );
  }
}

class FastLaughsActionButtons extends StatelessWidget {
  const FastLaughsActionButtons({
    super.key,
    required this.videoWidget,
    required this.videoPlayerController,
  });

  final FastLaghsVideoWidget videoWidget;
  final VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      bottom: 60,
      child: Column(
        children: [
          CircleAvatarImage(index: videoWidget.index),
          Column(
            children: [
              ValueListenableBuilder(
                  valueListenable: likedNotifier,
                  builder: (BuildContext context, Set<int> newLikedSet,
                      Widget? child) {
                    return newLikedSet.contains(videoWidget.index)
                        ? FastLaughsAction(IconTextButton(
                            icon: Icons.favorite_border_outlined,
                            title: 'Liked',
                            onTap: () {
                              likedNotifier.value.remove(videoWidget.index);
                              likedNotifier.notifyListeners();
                            }))
                        : FastLaughsAction(IconTextButton(
                            icon: Icons.emoji_emotions,
                            title: 'LOL',
                            onTap: () {
                              likedNotifier.value.add(videoWidget.index);
                              likedNotifier.notifyListeners();
                            }));
                  }),
              ValueListenableBuilder(
                valueListenable: myListNotifier,
                builder: (BuildContext context, newMyListSet, Widget? child) =>
                    newMyListSet.contains(videoWidget.index)
                        ? FastLaughsAction(IconTextButton(
                            icon: Icons.check,
                            title: 'Added',
                            onTap: () {
                              myListNotifier.value.remove(videoWidget.index);
                              myListNotifier.notifyListeners();
                            }))
                        : FastLaughsAction(IconTextButton(
                            icon: Icons.add,
                            title: 'MyList',
                            onTap: () {
                              myListNotifier.value.add(videoWidget.index);
                              myListNotifier.notifyListeners();
                            })),
              ),
              FastLaughsAction(IconTextButton(
                  icon: Icons.share,
                  title: 'Share',
                  onTap: () {
                    Share.share(dummyVideoUrls[videoWidget.index]);
                  })),
              ValueListenableBuilder(
                  valueListenable: playNotifier,
                  builder: (BuildContext context, newValue, Widget? child) =>
                      newValue
                          ? FastLaughsAction(IconTextButton(
                              icon: Icons.pause,
                              title: 'Pause',
                              onTap: () {
                                videoPlayerController.pause();
                                playNotifier.value = false;
                                playNotifier.notifyListeners();
                              }))
                          : FastLaughsAction(IconTextButton(
                              icon: Icons.play_arrow,
                              title: 'Play',
                              onTap: () {
                                videoPlayerController.play();
                                playNotifier.value = true;
                                playNotifier.notifyListeners();
                              }))),
            ],
          ),
        ],
      ),
    );
  }
}

class CircleAvatarImage extends StatelessWidget {
  final int index;
  CircleAvatarImage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
      return Container(
          padding: const EdgeInsets.only(right: 8, bottom: 3),
          child: InkWell(
            onTap: () {},
            child: state.isLoading == true
                ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
                : CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(state
                            .imageModelList.isNotEmpty
                        ? "$imageBaseUrl${state.imageModelList[index].posterPath}"
                        : searchSampleImage),
                  ),
          ));
    });
  }
}
