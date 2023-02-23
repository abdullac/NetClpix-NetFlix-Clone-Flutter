import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netclipxsample/applications/home/home_bloc.dart';
import 'package:netclipxsample/domain/home/models/home_items_model.dart';
import 'package:netclipxsample/infrastructure/core/links/link.dart';
import 'package:netclipxsample/presentations/core/functions/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/colors.dart';
import 'package:netclipxsample/presentations/core/variables/dimonsions.dart';
import 'package:netclipxsample/presentations/core/variables/images.dart';
import 'package:netclipxsample/presentations/core/widgets/title_area.dart';
import 'package:netclipxsample/presentations/core/widgets/vertical_image_container.dart';
import 'package:netclipxsample/presentations/scrn_home/home_direction_style_diminsion.dart/home_dimonsions.dart';
import 'package:netclipxsample/presentations/scrn_home/scrn_home_widgets/main_image.dart';

class CategoriesListView extends StatelessWidget {
  final HomeState state;
  const CategoriesListView({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> titleList = [
      "Released In The Past Year",
      "Trending Now",
      "Top 10 TV Shows In India Today",
      "Tense Dreams",
      "South Indian Cinema",
    ];
    return SizedBox(
      width: categoryListviewWidth,
      height: screenHeight,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: screenDimonsion(const EdgeInsets.only(top: 0), null, null),
        shrinkWrap: true,
        itemCount: titleList.length,
        itemBuilder: (BuildContext ctx, int parentIndex) {


                    //  List<HomeItemsModel> pastYearitemsList =[];
                    //  List<HomeItemsModel> trendingitemsList =[];
                    //  List<HomeItemsModel> topIndiaTvitemsList =[];
                    //  List<HomeItemsModel> tenseDreamsitemsList =[];
                    //  List<HomeItemsModel> southIndiaitemsList =[];

                      List<HomeItemsModel> posterPathList(){
                        List<HomeItemsModel> itemsList =[];
                          state.homeItemsModelList.forEach((element) {
                            if(element.releaseDate != null ){
                              if(parentIndex == 0 && element.releaseDate!.contains("2022")){
                                itemsList.add(element);
                                // pastYearitemsList.add(element);
                              }
                               if(parentIndex == 1 && element.popularity! > 1500.0){
                                itemsList.add(element);
                                // trendingitemsList.add(element);
                              }
                               if(parentIndex == 3 && element.voteAverage! > 7){
                                itemsList.add(element);
                                // tenseDreamsitemsList.add(element);
                              }
                               if(parentIndex == 4 && element.overview!.contains("family") || element.overview!.contains("asia") || element.overview!.contains("arnataka") || element.overview!.contains("annada") || element.overview!.contains("erala") || element.overview!.contains("amil") || element.overview!.contains("alayalam") || element.overview!.contains("ndia")){
                                itemsList.add(element);
                                // southIndiaitemsList.add(element);
                              }
                              if(parentIndex == 2){
                                itemsList.add(element);
                                itemsList.shuffle();
                                // topIndiaTvitemsList.shuffle();
                              }
                            }
                          });
                        return itemsList;
                      }
                         
                    


          return Column(
            children: [
              screenDimonsion(
                  parentIndex == 0 ? MainImage(state: state) : const SizedBox(),
                  const SizedBox(),
                  const SizedBox()),
              Container(
                height: 200,
                margin: const EdgeInsets.all(1),
                child: Column(
                  children: [
                    TitleArea(title: titleList[parentIndex]),
                    Expanded(
                      child: ListView.separated(
                        itemCount: parentIndex == 2 ? 10 : posterPathList().length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {


                          String setImageUrl(){
                            if(parentIndex == 0){
                              return state.homeItemsModelList.isNotEmpty
                                    ? "$imageBaseUrl${posterPathList()[index].posterPath}"
                                    : sampleVerticalImage;
                            }else if(parentIndex == 1){
                              return state.homeItemsModelList.isNotEmpty
                                    ? "$imageBaseUrl${posterPathList()[index].posterPath}"
                                    : sampleVerticalImage;
                            }else if(parentIndex == 2){
                              return state.homeItemsModelList.isNotEmpty
                                    ? "$imageBaseUrl${posterPathList()[index].posterPath}"
                                    : sampleVerticalImage;
                            }else if(parentIndex == 3){
                              return state.homeItemsModelList.isNotEmpty
                                    ? "$imageBaseUrl${posterPathList()[index].posterPath}"
                                    : sampleVerticalImage;
                            }else if(parentIndex == 4){
                              return state.homeItemsModelList.isNotEmpty
                                    ? "$imageBaseUrl${posterPathList()[index].posterPath}"
                                    : sampleVerticalImage;
                            }else{
                              return sampleVerticalImage;
                            }
                          }




                           return Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                padding: EdgeInsets.only(
                                    left: parentIndex % 3 == 2 ? 28 : 7),
                                child: VerticalImageContainerWidget(
                                  width: 110,
                                  height: 100,
                                  imageUrl:setImageUrl()
                                  
                                  
                                  
                                  
                                ),
                              ),
                              parentIndex % 3 == 2
                                  ? Positioned(
                                      bottom: -17,
                                      left: index == 0 ? 5 : -7,
                                      child: BorderedText(
                                          strokeColor: clrWhite,
                                          strokeWidth: 2.0,
                                          child: Text(
                                            "${index + 1}",
                                            style: const TextStyle(
                                                fontSize: 90,
                                                color: clrBlack,
                                                fontWeight: FontWeight.w500),
                                          )))
                                  : const SizedBox(),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                                // width: 7,
                                // height: 7,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
