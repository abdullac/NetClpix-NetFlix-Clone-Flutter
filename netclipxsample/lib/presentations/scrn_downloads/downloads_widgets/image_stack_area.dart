import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_container_widget.dart';

class ImageStackArea extends StatelessWidget {
  const ImageStackArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
    return Container(
      alignment: Alignment.center,
      height: imageBaseContainerHeight(),
      width: imageBaseContainerWidth(),
      child: BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
          return "${state.downloadsImagesFailurOrSucessOption}" ==
                  "${const Some(Left(MainFailure.clientFailure()))}"
              ? const Center(
                  child: Text(clientFailureText),
                )
              : state.isLoading == true
                  ? const Center(
                      child: CircularProgressIndicator(strokeWidth: 2))
                  : "${state.downloadsImagesFailurOrSucessOption}" ==
                          "${const Some(Left(MainFailure.serverFailure()))}"
                      ? const Center(
                          child: Text(serverFailureText),
                        )
                      : state.imageModelList.isEmpty
                          ? Center(
                              child: Text(
                                isEmptyText,
                                style: textMedium(),
                              ),
                            )

                          /// Image container
                          : ImageContainer(state: state);
        },
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final DownloadsState state;
  const ImageContainer({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: imageChildContainerHeight(),
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          CircleAvatar(
            radius: screenDimonsion(screenWidth() * 45 / 100,
                screenHeight() * 35 / 100, screenWidth() * 28 / 100),
            backgroundColor: Colors.grey.withOpacity(0.4),
          ),

          /// Images
          ImageContainerWidget(
            imagePosition: ImagePosition.left,
            imageUrl: "$imageBaseUrl${state.imageModelList[0].posterPath}",
          ),
          ImageContainerWidget(
            imagePosition: ImagePosition.right,
            imageUrl: "$imageBaseUrl${state.imageModelList[1].posterPath}",
          ),
          ImageContainerWidget(
            imagePosition: ImagePosition.center,
            imageUrl: "$imageBaseUrl${state.imageModelList[2].posterPath}",
          ),
        ],
      ),
    );
  }
}
