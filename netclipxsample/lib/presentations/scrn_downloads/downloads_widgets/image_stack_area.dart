import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_dimonsions/downloads_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_container_widget.dart';

class ImageStackArea extends StatelessWidget {
  const ImageStackArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
    return Container(
      alignment: Alignment.center,
      height: imageBaseContainerHeight,
      width: imageBaseContainerWidth,
      child: BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            height: imageChildContainerHeight,
            width: /*imageChildContainerWidth*/ double.infinity,
            child: state.isLoading == true ? const CircularProgressIndicator(strokeWidth: 2) : Stack(
              alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(
                  radius: screenDimonsion(screenWidth * 45 / 100,
                      screenHeight * 35 / 100, screenWidth * 28 / 100),
                  backgroundColor: Colors.grey.withOpacity(0.4),
                ),
                ImageContainerWidget(
                  imagePosition: ImagePosition.left,
                  // imageUrl: sampleVerticalImage,
                  imageUrl:
                      state.imageModelList.isNotEmpty ?"$imageBaseUrl${state.imageModelList[0].posterPath}" : sampleVerticalImage,
                ),
                ImageContainerWidget(
                  imagePosition: ImagePosition.right,
                  // imageUrl: sampleVerticalImage,
                  imageUrl:
                      state.imageModelList.isNotEmpty ?"$imageBaseUrl${state.imageModelList[1].posterPath}" : sampleVerticalImage,
                ),
                ImageContainerWidget(
                  imagePosition: ImagePosition.center,
                  // imageUrl: sampleVerticalImage,
                  imageUrl:
                      state.imageModelList.isNotEmpty ?"$imageBaseUrl${state.imageModelList[2].posterPath}" : sampleVerticalImage,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
