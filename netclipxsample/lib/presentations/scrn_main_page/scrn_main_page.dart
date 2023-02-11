import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/icons.dart';
import 'package:netclipxsample/presentations/scrn-search/scrn_search.dart';
import 'package:netclipxsample/presentations/scrn_downloads/scrn_downloads.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/scrn_fast_laughs.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home.dart';
import 'package:netclipxsample/presentations/scrn_new_and_hot/scrn_new_and_hot.dart';

class ScrnMainPage extends StatelessWidget {
  ScrnMainPage({super.key});

  static ValueNotifier<bool> bottomNavigationNotifier = ValueNotifier(true);
  // list of screens
  ValueNotifier<int> selectedIntexNotifier = ValueNotifier(1);
  List<Widget> screensList = <Widget>[
    const ScrnHome(),
    const ScrnNewAndHot(),
    const ScrnFastLaughs(),
    const ScrnSearch(),
    const ScrnDownloads(),
  ];

  // Build function
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    bigDimonsion = findDimonsion();
    print("bigDimonsion$bigDimonsion");
    return ValueListenableBuilder(
      valueListenable: selectedIntexNotifier,
      builder: (BuildContext context, updatedIndex, Widget? child) {
        return Stack(
          children: [
            screensList[updatedIndex],
            bottomNavigatinBar(updatedIndex),
          ],
        );
      },
    );
  }

  // Bottom navigation bar widget
  Widget bottomNavigatinBar(int updatedIndex) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationNotifier,
      builder: (BuildContext context, newValue, Widget? _) => newValue == true 
      ? 
      Visibility(
        visible: true,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: screenDimonsion(screenWidth, screenWidth * 1/2, screenWidth),
            color: Colors.grey.withOpacity(0.5),
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
          ),
        ),
      )
      : bottomNavigationBarAsist(),
    );
  }

  Widget bottomNavigationBarAsist(){
    return Visibility(
      visible: true,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Opacity(
          opacity: 0.5,
          child: Container(
            margin: const EdgeInsets.all(5),
            color: Colors.red,
            child: IconButton(onPressed: (){
              //
              bottomNavigationNotifier.value = true;
            }, icon: const Icon(Icons.open_in_new_rounded)),
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
