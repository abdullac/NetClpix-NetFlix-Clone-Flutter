import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';
import 'package:netclipxsample/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/core/widgets/title_area.dart';
import 'package:netclipxsample/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class ScrnHome extends StatelessWidget {
  ScrnHome({Key? key}) : super(key: key);

  final List<String> titleList = [
    "Released In The Past Year",
    "Trending Now",
    "Top 10 TV Shows In India Today",
    "Tense Dreams",
    "South Indian Cinema"
  ];

  @override
  Widget build(BuildContext context) {
    var columnView = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainImage(),
        CategoriesListView(titleList: titleList),
      ],
    );
    var rowView = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainImage(),
        CategoriesListView(titleList: titleList),
      ],
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarWidget(
        isOpacity: true,
        title: Image.network(
          netclipxsampleImage,
          width: 30,
          height: 30,
        ),
        secondaryIcon: Icons.folder_open,
        bottomAppBar: SizedBox(
          height: screenHeight*4.8/100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BottomAppBarButtons(title: "Tv Shows", onPressed: () {}),
              BottomAppBarButtons(title: "Movies", onPressed: () {}),
              BottomAppBarButtons(title: "Category", onPressed: () {}),
            ],
          ),
        ),
      ),
      body: InkWell(
        onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
            BottomNavigationBarShow.transparent,
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          scrollDirection: screenDimonsion(Axis.vertical, Axis.horizontal, Axis.horizontal),
          children: [
            screenDimonsion(columnView, rowView, rowView),
          ],
        ),
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenDimonsion(screenHeight * 80 / 100, screenHeight * 83 / 100,
          screenHeight * 83 / 100),
      width: screenDimonsion(
          screenWidth, screenHeight * 75 / 100, screenHeight * 75 / 100),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(sampleVerticalImage), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconTextButton(icon: Icons.add, title: "My List", onTap: () {}),
                const ElevatedIconButton(),
                IconTextButton(
                    icon: Icons.info_outline, title: "Info", onTap: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
    required this.titleList,
  });

  final List<String> titleList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenDimonsion(
          screenWidth, screenWidth/*-(screenHeight*75/100)*/, screenHeight * 75 / 100),
      height: screenHeight,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 0),
        shrinkWrap: true,
        itemCount: titleList.length,
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
            height: 170,
            margin: const EdgeInsets.all(1),
            child: Column(
              children: [
                TitleArea(title: titleList[index]),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return VerticalImageContainerWidget(
                          width: 90, height: 90, imageUrl: sampleVerticalImage);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 7,
                      height: 7,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ElevatedIconButton extends StatelessWidget {
  const ElevatedIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.play_arrow),
      label: const Text(
        "Play",
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(clrWhite),
        foregroundColor: MaterialStateProperty.all(clrBlack),
        padding: MaterialStateProperty.all(
          const EdgeInsets.only(right: 5, bottom: 12, top: 12),
        ),
      ),
    );
  }
}

class BottomAppBarButtons extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const BottomAppBarButtons({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: textMedium(),
      ),
    );
  }
}
