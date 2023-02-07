import 'package:flutter/material.dart';

class ScrnDownloads extends StatelessWidget {
  const ScrnDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          title: Text("Downloads"),
          titleSpacing: 5,
          actions: [Icon(Icons.cast), Icon(Icons.folder_open)],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              width: double.infinity,
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    Text("Smart Downloads"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.amber,
      ),
    );
  }
}
