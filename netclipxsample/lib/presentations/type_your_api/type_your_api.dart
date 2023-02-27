import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/applications/search/topsearch/topsearch_bloc.dart';
import 'package:netclipxsample/infrastructure/core/api_url/url.dart';
import 'package:netclipxsample/infrastructure/core/your_api_key/your_api_key.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';

late int randomIndexMainImage;

class TypeYourApiKey extends StatelessWidget {
  TypeYourApiKey({super.key});

  final TextEditingController apiKeyFieldTextController =
      TextEditingController();
  static ValueNotifier<bool> apiKeyScreenNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    String titleText = "Enter here Your TMDB Api key";
    Color titleColor = Colors.blue;
    return ValueListenableBuilder(
        valueListenable: apiKeyScreenNotifier,
        builder:
            (BuildContext context, apiKeyScreenVisibleValue, Widget? child) {
          bool scrnMainPageVisibleValue =
              apiKeyScreenVisibleValue == true ? false : true;
          final random = Random();
          randomIndexMainImage = random.nextInt(5);
          return Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: scrnMainPageVisibleValue,
                child: ScrnMainPage(),
              ),
              Visibility(
                visible: apiKeyScreenVisibleValue,
                child: Center(
                  child: Container(
                    color: clrPurple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          titleText,
                          style: TextStyle(color: titleColor),
                        ),
                        TextField(
                          controller: apiKeyFieldTextController,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (apiKeyFieldTextController.text == "APIKEY") {
                            } else {
                              try {
                                final response = await Dio(BaseOptions()).get(
                                    "${Url.baseUrl}/trending/all/day?api_key=${apiKeyFieldTextController.text}");
                                if (response.statusCode == 200 ||
                                    response.statusCode == 201) {
                                  yourApiKey = apiKeyFieldTextController.text;
                                  apiKeyScreenNotifier.value = false;
                                  apiKeyScreenNotifier.notifyListeners();

                                  /////////////////////////
                                  WidgetsBinding.instance
                                      .addPostFrameCallback((timeStamp) {
                                    BlocProvider.of<DownloadsBloc>(context).add(
                                        const DownloadsEvent
                                            .getDownloadsImages());
                                    BlocProvider.of<DownloadsBloc>(context).add(
                                        const DownloadsEvent
                                            .getDownloadsImages());
                                    BlocProvider.of<HomeBloc>(context)
                                        .add(const GetHomeItems());
                                    BlocProvider.of<HotAndNewBloc>(context)
                                        .add(const GetComingSoonItems());

                                    BlocProvider.of<HotAndNewBloc>(context)
                                        .add(const GetEveryOnesWatchingItems());

                                    BlocProvider.of<TopsearchBloc>(context).add(
                                        const TopsearchEvent
                                            .getTopSearchItem());
                                  });

                                  ////////////////////////
                                } else {
                                  titleText = "Server error for this ApiKey";
                                  titleColor = Colors.orange;
                                }
                              } catch (e) {
                                titleText =
                                    "Please, Retype your currect TMDB ApiKey";
                                titleColor = Colors.red;
                                print(e.toString());
                                apiKeyScreenNotifier.notifyListeners();
                              }
                            }
                          },
                          child: const Text("Ok"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
