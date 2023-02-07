import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/icons.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn_downloads/scrn_downloads.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/scrn_fast_laughs.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/scrn_new_and_hot.dart';

class ScrnMainPage extends StatelessWidget {
  ScrnMainPage({super.key});

  // list of screens
  ValueNotifier<int> selectedIntexNotifier = ValueNotifier(4);
  List<Widget> screensList = const <Widget>[
    ScrnHome(),
    ScrnNewAndHot(),
    ScrnFastLaughs(),
    ScrnSearch(),
    ScrnDownloads(),
  ];

  // Build function
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIntexNotifier,
        builder: (BuildContext context, updatedIndex, Widget? child) {
          return Stack(
            children: [
              screensList[updatedIndex],
              bottomNavigatinBar(updatedIndex),
            ],
          );
        });
  }

  // Bottom navigation bar widget
  Widget bottomNavigatinBar(int updatedIndex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BottomNavigationBar(
        items: bottomNavigationBarItems(updatedIndex),
        onTap: (selectedIndex) {
          selectedIntexNotifier.value = selectedIndex;
        },
        currentIndex: selectedIntexNotifier.value,
        iconSize: 25,
        selectedItemColor: clrRed,
        unselectedItemColor: clrWhite30,
        showUnselectedLabels: true,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
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
