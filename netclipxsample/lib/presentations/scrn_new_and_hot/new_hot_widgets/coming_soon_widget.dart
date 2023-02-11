import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/styles.dart';
import 'package:netclipxsample/core/variables/colors.dart';
import 'package:netclipxsample/core/variables/images.dart';
import 'package:netclipxsample/core/widgets/icon_button_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 50,
            color: Colors.red,
          ),
          Expanded(
            child: ListView(
              children: const [
                ImageContainer(),
                TitleAndActions(),
                DescriptionsArea(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(searchSampleImage), fit: BoxFit.cover)),
    );
  }
}

class TitleAndActions extends StatelessWidget {
  const TitleAndActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "Data ol Reloaded 7 of 732 libraries in 641ms (compile: 52 ms, reload: 180 ms, reassemble: 396 ms)",
            overflow: TextOverflow.ellipsis,
            style: textLarge()?.copyWith(letterSpacing: -1.5),
          ),
        ),
        Row(
          children: [
            IconButtonWidget(
              icon: Icons.notifications,
              title: "Remind me",
              size: const Size(60, 40),
              onTap: () {},
            ),
            IconButtonWidget(
              icon: Icons.info_rounded,
              title: "Info",
              size: const Size(40, 40),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class DescriptionsArea extends StatelessWidget {
  const DescriptionsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        descriptionText(
          "Eloaded 1 of 732 librarariesReloaded 1 of 732 libraries in 280ms in ",
        ),
        descriptionText(
          "Reloaded 1 of 732 librariesReloaded 1 of 732 libraries in 280ms in 280ms ",
          style: textMedium(),
        ),
        descriptionText(
          "Reloaded 1 of 732 librariesReloadeloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2ed 1eloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2 of 732 libraries ieloaded 1 of 732 librariesReloaded 1 of 732 libraries in 2n 280ms in 280ms ",
          style: textSmall(),
          isOneLine: false,
        ),
      ],
    );
  }

  Padding descriptionText(String text,
      {bool isOneLine = true, TextStyle? style}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        maxLines: isOneLine == true ? 1 : 5,
        overflow: TextOverflow.ellipsis,
        style: style ?? textSmall()?.copyWith(color: clrWhite),
      ),
    );
  }
}











// SizedBox.fromSize(
//                     size: const Size(56, 56),
//                       child: ClipOval(
//                         child: Material(
//                           color: Colors.purple,
//                           child: InkWell(
//                             splashColor: Colors.green,
//                             onTap: (){},
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 Icon(Icons.add),
//                                 Text("data"),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),