import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/icons.dart';
import 'package:netclipxsample/presentations/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn_downloads/scrn_downloads.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/scrn_fast_laughs.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/scrn_new_and_hot.dart';
import 'package:netclipxsample/presentations/type_your_api/type_your_api.dart';
import 'diomonsions/main_page_diomonsions.dart';

ValueNotifier<bool> volumeNotifier = ValueNotifier(true);

enum BottomNavigationBarShow {
  visible,
  invisible,
  transparent,
}

class ScrnMainPage extends StatelessWidget {
  ScrnMainPage({super.key});

  static ValueNotifier<BottomNavigationBarShow> bottomNavigationNotifier =
      ValueNotifier(BottomNavigationBarShow.visible);

  final ValueNotifier<int> selectedIntexNotifier = ValueNotifier(0);

  static ValueNotifier<Size> screenSizeNotifier =
      ValueNotifier(const Size(205, 130));

  final List<Widget> screensList = <Widget>[
    const ScrnHome(),
    const ScrnNewAndHot(),
    const ScrnFastLaughs(),
    const ScrnSearch(),
    const ScrnDownloads(),
  ];

  // Build function
  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);

    /// system Navigation black color
    if (kIsWeb) {
      ////
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    }

    // print("big dimonsion   ${findBigDimonsion()}");
    return  ValueListenableBuilder(
      valueListenable: selectedIntexNotifier,
      builder: (BuildContext context, updatedIndex, Widget? child) {
        return Stack(
          children: [
            screensList[updatedIndex],
            bottomNavigatinBarWidget(updatedIndex),
          ],
        );
      },
    );
  }

  // Bottom navigation bar widget
  Widget bottomNavigatinBarWidget(int updatedIndex) {
    return ValueListenableBuilder(
      valueListenable: ScrnMainPage.bottomNavigationNotifier,
      builder: (BuildContext context, newValue, Widget? _) {
        if (newValue == BottomNavigationBarShow.visible) {
          return bottomNavigationBar(updatedIndex);
        } else if (newValue == BottomNavigationBarShow.transparent) {
          return Opacity(
              opacity: 0.6, child: bottomNavigationBar(updatedIndex));
        } else if (newValue == BottomNavigationBarShow.invisible) {
          return bottomNavigationBarAsist();
        } else {
          return const SizedBox();
        }
      },
    );
  }

  /// bottom navigation bar
  Align bottomNavigationBar(int updatedIndex) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: bottomNavigationBarWidth(),
        color: Colors.grey.withOpacity(0.5),
        child: BottomNavigationBar(
          items: bottomNavigationBarItems(updatedIndex),
          onTap: onTap,
          currentIndex: selectedIntexNotifier.value,
          iconSize: iconSize(),
          selectedIconTheme: selcetediconThemeData(),
          unselectedFontSize: unSelectedFontSize(),
          selectedItemColor: clrRed,
          unselectedItemColor: clrWhite30,
          showUnselectedLabels: true,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
        ),
      ),
    );
  }

  onTap(selectedIndex) {
    selectedIntexNotifier.value = selectedIndex;
    ScrnMainPage.bottomNavigationNotifier.value =
        BottomNavigationBarShow.visible;
    appBarShowNotifier.value = true;
  }

  IconThemeData selcetediconThemeData() {
    return IconThemeData(
        size: screenDimonsion(screenHeight() * 4 / 100,
            screenHeight() * 9 / 100, screenHeight() * 5 / 100));
  }

  /// if bottomNavigationBar is invisible, then Shows a red colored Square button visible
  Widget bottomNavigationBarAsist() {
    return Visibility(
      visible: true,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Opacity(
          opacity: 0.5,
          child: Container(
            margin: const EdgeInsets.all(5),
            color: clrRed,
            child: IconButton(
                onPressed: () {
                  //
                  ScrnMainPage.bottomNavigationNotifier.value =
                      BottomNavigationBarShow.visible;
                },
                icon: const Icon(Icons.open_in_new_rounded)),
          ),
        ),
      ),
    );
  }

  // Bottom navigation bar items list
  List<BottomNavigationBarItem> bottomNavigationBarItems(int notifierValue) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: notifierValue == 0 ? iconHome : iconHomeOutlined,
          label: "Home"),
      BottomNavigationBarItem(
        icon: notifierValue == 1 ? iconPhotoLibrary : iconPhotoLibraryOutlined,
        label: "New & Hot",
      ),
      BottomNavigationBarItem(
        icon:
            notifierValue == 2 ? iconEmojiEmotions : iconEmojiEmotionsOutlined,
        label: "Fast Laughs",
      ),
      BottomNavigationBarItem(
        icon: notifierValue == 3 ? iconSearch : iconSearchOutlined,
        label: "Search",
      ),
      BottomNavigationBarItem(
        icon: notifierValue == 4 ? iconDownload : iconDownloadOutlined,
        label: "Downloads",
      ),
    ];
  }
}
