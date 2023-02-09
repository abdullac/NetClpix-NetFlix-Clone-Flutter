import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrnSearch extends StatelessWidget {
  ScrnSearch({Key? key}) : super(key: key);

  ValueNotifier<bool> searchFieldClickNotifier = ValueNotifier(false);
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: searchFieldClickNotifier,
            builder: (BuildContext context, newValue, Widget? _) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: newValue == false ? 1.0 : 0.0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.search, color: Colors.grey[300]),
                            Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ///////
                    Opacity(
                      opacity: newValue == false ? 0.0 : 1.0,
                      child: CupertinoTextField(
                        controller: searchFieldController,
                        onTap: () {
                          // onTap
                          searchFieldClickNotifier.value = true;
                        },
                        onTapOutside: (event) {
                          //onTap outSide
                          searchFieldClickNotifier.value = false;
                        },
                        prefix: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        prefixMode: OverlayVisibilityMode.notEditing,
                        suffix: IconButton(
                            onPressed: () {
                              // clear searchField onPressed
                              searchFieldController.clear();
                            },
                            icon: const Icon(Icons.close_rounded,
                                color: Colors.grey)),
                        suffixMode: OverlayVisibilityMode.editing,
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        placeholder: "Search",
                        placeholderStyle: TextStyle(color: Colors.grey[400]),
                        style: TextStyle(color: Colors.red[500]),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
