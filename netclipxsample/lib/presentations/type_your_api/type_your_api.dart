///
///   I h'nt clean/refacter this file, because this file is only ref use.
///

import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

late int randomIndexMainImage;

class TypeYourApiKey extends StatelessWidget {
  TypeYourApiKey({super.key});

  final TextEditingController apiKeyFieldTextController =
      TextEditingController();
  static ValueNotifier<bool> apiKeyScreenNotifier = ValueNotifier(true);
  final String apiKeySave = "apiKeySave";
  String printText = "* testing Print Text\n";

  @override
  Widget build(BuildContext context) {
    // late SharedPreferences sPref;
    String titleText = "Enter Your TMDB Api key.";
    Color titleColor = Colors.blue;
    postFrameBindingForBlocProvider() {
      /////////////////////////
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        BlocProvider.of<DownloadsBloc>(context)
            .add(const DownloadsEvent.getDownloadsImages());
        BlocProvider.of<DownloadsBloc>(context)
            .add(const DownloadsEvent.getDownloadsImages());
        BlocProvider.of<HomeBloc>(context).add(const GetHomeItems());
        BlocProvider.of<HotAndNewBloc>(context).add(const GetComingSoonItems());

        BlocProvider.of<HotAndNewBloc>(context)
            .add(const GetEveryOnesWatchingItems());

        BlocProvider.of<TopsearchBloc>(context)
            .add(const TopsearchEvent.getTopSearchItem());
        ////////////////////////
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (kIsWeb) {
        //
      } else {
        printText = printText + "* inside not kIsWeb isAvailable\n";
        SharedPreferences sPref = await SharedPreferences.getInstance();
        bool isAvailableApiKey = sPref.containsKey(apiKeySave);
        if (isAvailableApiKey == true) {
          printText = printText + "* apiKey Available\n";
          apiKeyScreenNotifier.value = false;
          String? getSavedApiKey = sPref.getString(apiKeySave);
          if (getSavedApiKey != null) {
            yourApiKey = getSavedApiKey;
            printText = printText + "* $yourApiKey \n";
            postFrameBindingForBlocProvider();
          }
        } else {
          printText = printText + "* NotAvailable ApiKey\n";
          apiKeyScreenNotifier.value = true;
        }
      }
    });
    return ValueListenableBuilder(
        valueListenable: apiKeyScreenNotifier,
        builder:
            (BuildContext context, apiKeyScreenVisibleValue, Widget? child) {
          bool scrnMainPageVisibleValue =
              apiKeyScreenVisibleValue == true ? false : true;
          final random = Random();
          randomIndexMainImage = random.nextInt(5);
          return Stack(
            alignment: Alignment.topCenter,
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
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextField(
                            controller: apiKeyFieldTextController,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(), filled: true),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (apiKeyFieldTextController.text == "APIKEY") {
                              //
                            } else {
                              try {
                                final response = await Dio(BaseOptions()).get(
                                    "${Url.baseUrl}/trending/all/day?api_key=${apiKeyFieldTextController.text}");
                                if (response.statusCode == 200 ||
                                    response.statusCode == 201) {
                                  if (kIsWeb) {
                                    yourApiKey = apiKeyFieldTextController.text;
                                    apiKeyScreenNotifier.value = false;
                                    postFrameBindingForBlocProvider();
                                    apiKeyScreenNotifier.notifyListeners();
                                  } else {
                                    printText = printText +
                                        "* inside Not kIsWeb isSave\n";
                                    titleText = printText +
                                        "Enter Your TMDB Api key.\n ! ApiKey will be stored in device storage";
                                    SharedPreferences sPref =
                                        await SharedPreferences.getInstance();

                                    bool isSavedApiKey = await sPref.setString(
                                        apiKeySave,
                                        apiKeyFieldTextController.text);
                                    printText = isSavedApiKey
                                        ? printText + "* saved your apiKey\n"
                                        : printText +
                                            "* not saved your apiKey\n";
                                    yourApiKey = apiKeyFieldTextController.text;
                                    apiKeyScreenNotifier.value = false;
                                    postFrameBindingForBlocProvider();
                                    apiKeyScreenNotifier.notifyListeners();
                                  }
                                } else {
                                  titleText = "Server error for this ApiKey";
                                  titleColor = Colors.orange;
                                }
                              } catch (e) {
                                titleText =
                                    "Please, Retype your currect TMDB ApiKey, internet connection error, Or Another error \n ${e.toString()}";
                                e.toString();
                                titleColor = Colors.red;
                                printText = printText + "* ${e.toString()} \n";
                                apiKeyScreenNotifier.notifyListeners();
                              }
                            }
                          },
                          child: const Text("Ok"),
                        ),
                        Text(
                          printText,
                          style: const TextStyle(fontSize: 10),
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
