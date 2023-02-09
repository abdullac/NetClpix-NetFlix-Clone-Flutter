import 'package:flutter/material.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';
// enum DimonsionType{
//   height,
//   width,
//   whitchSmall,
//   any,
// }

// double findDimonsion(ctx,DimonsionType dimonsionType){
//   double destence = 0;
//   if(dimonsionType == DimonsionType.height){
//     destence = MediaQuery.sizeOf(ctx).height;
//   }else if(dimonsionType == DimonsionType.width){
//     destence = MediaQuery.sizeOf(ctx).width;
//   }else if(dimonsionType == DimonsionType.whitchSmall){
//     destence =  MediaQuery.sizeOf(ctx).width <= MediaQuery.sizeOf(ctx).height ?
//     MediaQuery.sizeOf(ctx).width : MediaQuery.sizeOf(ctx).height ;
//   }
//   return destence;
// }

enum BigDimonsion {
  height,
  width,
  same,
}

BigDimonsion findDimonsion() {
  if (screenWidth <= screenHeight * 2 / 3) {
    return BigDimonsion.height;
  } else
  // if (screenWidth > screenHeight * 2 / 3)
  {
    if (screenWidth * 2 / 3 < screenHeight) {
      return BigDimonsion.same;
    } else {
      return BigDimonsion.width;
    }
  }
}

dynamic screenDimonsion(dynamic heightedDimension, dynamic widthedDimonsion,
    dynamic sameDimonsion) {
  if (bigDimonsion == BigDimonsion.height) {
    return heightedDimension;
  } else if (bigDimonsion == BigDimonsion.width) {
    return widthedDimonsion;
  } else {
    return sameDimonsion;
  }
}
