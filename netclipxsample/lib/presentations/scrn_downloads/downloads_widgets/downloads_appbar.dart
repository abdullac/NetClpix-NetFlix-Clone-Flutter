 import 'package:flutter/material.dart';
import 'package:netclipxsample/core/widgets/app_bar.dart';
import 'package:netclipxsample/presentations/scrn_downloads/downloads_widgets/bottom_appbar.dart';

PreferredSize downloadsAppbar() {
    return appBarWidget(
      title: const Text("Downloads"),
      secondaryIcon: Icons.folder_open,
      bottomAppBar: const BottomAppBarWidget(),
    );
  }