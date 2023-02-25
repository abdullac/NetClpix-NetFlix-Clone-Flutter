import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/variables/videos.dart';
import 'package:netclipxsample/presentations/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/presentations/core/widgets/round_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/fastluagh_action_space.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/video_widget.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/scrn_fast_laughs.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

/// image ircular Avatar
class CircleAvatarImage extends StatelessWidget {
  final int index;
  const CircleAvatarImage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
      return Container(
          padding: const EdgeInsets.only(right: 8, bottom: 3),

          /// make onTap in CircularAvatar
          child: InkWell(
            onTap: () {
              print("CircularAvatarImage");
            },
            child: state.isLoading == true
                ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
                : CircleAvatar(
                    radius: 25,

                    /// set image to CircularAvatar
                    backgroundImage: NetworkImage(state
                            .imageModelList.isNotEmpty
                        ? "$imageBaseUrl${state.imageModelList[index].posterPath}"
                        : searchSampleImage),
                  ),
          ));
    });
  }
}

/// fastlaughs action buttons
class FastLaughsActionButtons extends StatelessWidget {
  const FastLaughsActionButtons({
    super.key,
    required this.index,
    required this.videoPlayerController,
  });

  final int index;
  final VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      bottom: 60,
      child: Column(
        children: [
          /// set Image CircularAvatar
          CircleAvatarImage(index: index),
          Column(
            children: [
              /// set LOl,Liked Atcion button
              ValueListenableBuilder(
                  valueListenable: likedNotifier,
                  builder: (BuildContext context, Set<int> newLikedSet,
                      Widget? child) {
                    return newLikedSet.contains(index)
                        ? FastLaughsActionSpace(IconTextButton(
                            icon: Icons.favorite_border_outlined,
                            title: 'Liked',
                            onTap: () {
                              likedNotifier.value.remove(index);
                              likedNotifier.notifyListeners();
                            }))
                        : FastLaughsActionSpace(IconTextButton(
                            icon: Icons.emoji_emotions,
                            title: 'LOL',
                            onTap: () {
                              likedNotifier.value.add(index);
                              likedNotifier.notifyListeners();
                            }));
                  }),

              /// set MyList,Added Atcion button
              ValueListenableBuilder(
                valueListenable: myListNotifier,
                builder: (BuildContext context, newMyListSet, Widget? child) =>
                    newMyListSet.contains(index)
                        ? FastLaughsActionSpace(IconTextButton(
                            icon: Icons.check,
                            title: 'Added',
                            onTap: () {
                              myListNotifier.value.remove(index);
                              myListNotifier.notifyListeners();
                            }))
                        : FastLaughsActionSpace(IconTextButton(
                            icon: Icons.add,
                            title: 'MyList',
                            onTap: () {
                              myListNotifier.value.add(index);
                              myListNotifier.notifyListeners();
                            })),
              ),

              /// set Share Atcion button
              FastLaughsActionSpace(IconTextButton(
                  icon: Icons.share,
                  title: 'Share',
                  onTap: () {
                    Share.share(dummyVideoUrls[index]);
                  })),

              /// set Play,Pouse Atcion button
              ValueListenableBuilder(
                  valueListenable: playNotifier,
                  builder: (BuildContext context, newValue, Widget? child) =>
                      newValue
                          ? FastLaughsActionSpace(IconTextButton(
                              icon: Icons.pause,
                              title: 'Pause',
                              onTap: () {
                                videoPlayerController.pause();
                                playNotifier.value = false;
                                playNotifier.notifyListeners();
                              }))
                          : FastLaughsActionSpace(IconTextButton(
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

/// voilumeAction button
class FastLaughsVolumeButton extends StatelessWidget {
  const FastLaughsVolumeButton({
    super.key,
    required this.videoPlayerController,
  });

  final VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60, left: 5),
        child: ValueListenableBuilder(
          valueListenable: volumeNotifier,
          builder: (BuildContext context, newValue, Widget? child) => newValue

              /// set Volume action button
              ? RoundIconButton(
                  icon: Icons.volume_up,
                  onPressed: () {
                    videoPlayerController.setVolume(0.0);
                    volumeNotifier.value = false;
                    volumeNotifier.notifyListeners();
                  },
                )
              : RoundIconButton(
                  icon: Icons.volume_off,
                  onPressed: () {
                    videoPlayerController.setVolume(1.0);
                    volumeNotifier.value = true;
                    volumeNotifier.notifyListeners();
                  },
                ),
        ),
      ),
    );
  }
}
