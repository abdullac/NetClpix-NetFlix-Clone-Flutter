import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/buttons_area.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/downloads_appbar.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_stack_area.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/text_widget_area.dart';

class ScrnDownloads extends StatelessWidget {
  const ScrnDownloads({Key? key}) : super(key: key);

  /// Build function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: downloadsAppbar(),
      body: Stack(
        children: const [
          WidgetsListView(),
          ButtonsArea(),
        ],
      ),
    );
  }

 
}

///  WidgetsListView
class WidgetsListView extends StatelessWidget {
  const WidgetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:
          screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical),
      children: const <Widget>[
        TextWidgetArea(),
        ImageStackArea(),
        // SizedBox(height: screenHeight * 17.6 / 100)
      ],
    );
  }
}

