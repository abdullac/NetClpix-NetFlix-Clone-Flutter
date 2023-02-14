import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/variables/videos.dart';
import 'package:netclipxsample/core/widgets/icon_text_button.dart';
import 'package:netclipxsample/core/widgets/round_icon_button.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/fastluagh_action_widgets.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/video_widget.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:video_player/video_player.dart';

class ScrnFastLaughs extends StatelessWidget {
  const ScrnFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          InkWell(
            onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier
                .value = BottomNavigationBarShow.transparent,
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) =>
                  FastLaghsVideoWidget(index: index),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 60, left: 5),
              child: RoundIconButton(
                icon: Icons.volume_off,
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 60,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(right: 8, bottom: 3),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(searchSampleImage),
                      ),
                    )),
                Column(
                  children: const [
                    FastLaughsActionWidgest(
                        actionIcon: Icons.emoji_emotions, actionTitle: 'LOL'),
                    FastLaughsActionWidgest(
                        actionIcon: Icons.add, actionTitle: 'MyList'),
                    FastLaughsActionWidgest(
                        actionIcon: Icons.share, actionTitle: 'Share'),
                    FastLaughsActionWidgest(
                        actionIcon: Icons.play_arrow, actionTitle: 'Play'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



///////////////////////////////////////////////////
// import 'dart:math';

// import 'package:flutter/material.dart';

// class ScrnFastLaughs extends StatelessWidget {
//   ScrnFastLaughs({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           PageView(
//             scrollDirection: Axis.vertical,
//             children: <Widget>[
//               Container(color: Colors.accents[0 % Colors.accents.length]),
//               Container(color: Colors.accents[1 % Colors.accents.length]),
//               Container(color: Colors.accents[2 % Colors.accents.length]),
//               Container(color: Colors.accents[3 % Colors.accents.length]),
//               Container(color: Colors.accents[4 % Colors.accents.length]),
//               Container(color: Colors.accents[5 % Colors.accents.length]),
//               Container(color: Colors.accents[6 % Colors.accents.length]),
//               Container(color: Colors.accents[7 % Colors.accents.length]),
//               Container(color: Colors.accents[8 % Colors.accents.length]),
//               Container(color: Colors.accents[9 % Colors.accents.length]),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ScrnFastLaughs extends StatelessWidget {
//   ScrnFastLaughs({Key? key}) : super(key: key);

//   List<Color> clrList = [
//     Colors.purple,
//     Colors.blue,
//     Colors.green,
//     Colors.indigo,
//     Colors.cyan,
//   ];

//   // Color clr() {
//   //   return clrList[Random().nextInt(clrList.length)];
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           PageView(
//             scrollDirection: Axis.vertical,
//             children: <Widget>[
//               Container(color: clrList[0 % clrList.length]),
//               Container(color: clrList[1 % clrList.length]),
//               Container(color: clrList[2 % clrList.length]),
//               Container(color: clrList[3 % clrList.length]),
//               Container(color: clrList[4 % clrList.length]),
//               Container(color: clrList[5 % clrList.length]),
//               Container(color: clrList[6 % clrList.length]),
//               Container(color: clrList[7 % clrList.length]),
//               Container(color: clrList[8 % clrList.length]),
//               Container(color: clrList[9 % clrList.length]),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
