import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_fast_laughs/fastlaugh_widgets/video_widget.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

ValueNotifier<Set<int>> likedNotifier = ValueNotifier({});
ValueNotifier<Set<int>> myListNotifier = ValueNotifier({});

class ScrnFastLaughs extends StatelessWidget {
  const ScrnFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          InkWell(
            /// hide bottom navigation bar on tapDown in screen
            onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier
                .value = BottomNavigationBarShow.transparent,

            /// pageView
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    5,
                    (index) =>
                        // PageViewItem(index: index)),
                        FastLaghsVideoWidget(index: index))),
          ),
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
