

import 'package:flutter/material.dart';
enum DimonsionType{
  height,
  width,
  any,
}

double findDimonsion(ctx,DimonsionType dimonsionType){
  double destence = 0;
  if(dimonsionType == DimonsionType.height){
    destence = MediaQuery.sizeOf(ctx).height;
  }else if(dimonsionType == DimonsionType.width){
    destence = MediaQuery.sizeOf(ctx).width;
  }
  return destence;
}