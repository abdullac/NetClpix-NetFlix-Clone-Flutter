import 'package:flutter/material.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/buttons_area.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/downloads_appbar.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/image_stack_area.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/text_widget_area.dart';

class ScrnDownloads extends StatelessWidget {
  const ScrnDownloads({Key? key}) : super(key: key);

  /// Build function
  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    return Scaffold(
      /// appBar
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

///  Widgets ListView
class WidgetsListView extends StatelessWidget {
  const WidgetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    return ListView(
      scrollDirection:
          screenDimonsion(Axis.vertical, Axis.horizontal, Axis.vertical),
      children: const <Widget>[
        /// widgets. text area, images area
        TextWidgetArea(),
        ImageStackArea(),
      ],
    );
  }
}
