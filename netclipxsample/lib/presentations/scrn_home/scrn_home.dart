import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/domain/core/failures/main_failure.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/functions/styles.dart';
import 'package:netclipxsample/presentations/core/variables/strings.dart';
import 'package:netclipxsample/presentations/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_direction_style.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/home_appbar.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/categories_listview.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

class ScrnHome extends StatelessWidget {
  const ScrnHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenSizeNotifierValue(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeItems());
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppBarWidget(),

      /// hide bottom navigation bar when screen onTapDown
      body: InkWell(
        onTapDown: (details) => ScrnMainPage.bottomNavigationNotifier.value =
            BottomNavigationBarShow.transparent,

        /// hide/show appBar when sroll listView
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            int direction = notification.direction.index;
            if (direction == 2) {
              appBarShowNotifier.value = false;
            } else if (direction == 1) {
              appBarShowNotifier.value = true;
            }
            appBarShowNotifier.notifyListeners();
            return false;
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              /// scrnHome, listView for whole screen to be srollable
              return "${state.mainFailureOrHomeItemsModelOption}" ==
                      "${const Some(Left(MainFailure.clientFailure()))}"
                  ? Center(
                      child: Text(
                      clientFailureText,
                      style: textMedium(),
                    ))
                  : "${state.mainFailureOrHomeItemsModelOption}" ==
                          "${const Some(Left(MainFailure.serverFailure()))}"
                      ? Center(
                          child: Text(
                          serverFailureText,
                          style: textMedium(),
                        ))
                      : ListView(
                          padding: const EdgeInsets.only(top: 0),
                          scrollDirection: parentListviewDirection,
                          children: [
                            screenDimonsion(CategoriesListView(state: state),
                                rowView(state: state), rowView(state: state)),
                          ],
                        );
            },
          ),
        ),
      ),
    );
  }

  ///scrnHome shows, if not heighted dimonsion.
  Widget rowView({required HomeState state}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainImage(state: state),
        CategoriesListView(state: state),
      ],
    );
  }
}
