import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netclipxsample/applications/downloads/downloads_bloc.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/applications/hotandnew/hot_and_new_bloc.dart';
import 'package:netclipxsample/applications/search/search_result/search_result_bloc.dart';
import 'package:netclipxsample/applications/search/topsearch/topsearch_bloc.dart';
import 'package:netclipxsample/domain/core/di/injectable.dart';
import 'package:netclipxsample/presentations/scrn_main_page/scrn_main_page.dart';
import 'package:netclipxsample/presentations/type_your_api/type_your_api.dart';
import 'presentations/core/variables/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjetion();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<TopsearchBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchResultBloc>()),
        BlocProvider(create: (ctx) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        scrollBehavior: MyCustomeScrollBehavior(),
        color: clrGreen,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: clrPink,
          scaffoldBackgroundColor: clrBlack,
          appBarTheme: AppBarTheme(
              color: clrBlack.withOpacity(0.2),
              elevation: 0,
              titleTextStyle:
                  const TextStyle(fontSize: 35, fontWeight: FontWeight.w400)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: clrBlack.withOpacity(0.9)),
        ),
        home: Scaffold(
          extendBodyBehindAppBar: true,
          body: SafeArea(
            // child: ScrnMainPage(),
            child: TypeYourApiKey(),
          ),
          resizeToAvoidBottomInset: true,
          extendBody: true,
        ),
      ),
    );
  }
}

/// scrollable for desktop screen
class MyCustomeScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}









// class Singleton {
//   static final Singleton _singleton = Singleton._internal();

//   factory Singleton() {
//     return _singleton;
//   }

//   Singleton._internal();
// }