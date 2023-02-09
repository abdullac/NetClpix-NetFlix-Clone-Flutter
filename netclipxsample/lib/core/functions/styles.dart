
import 'package:flutter/material.dart';
import 'package:netclipxsample/core/functions/dimonsions.dart';
import 'package:netclipxsample/core/variables/dimonsions.dart';

// TextStyle? textLarge(ctx){
//   return Theme.of(ctx).textTheme.bodyLarge;
// }

// TextStyle? textSmall(ctx){
//   return Theme.of(ctx).textTheme.bodySmall;
// }




// TextStyle? textLarge(){
//   double fontSize = screenSmallDimonsion * 6.5 / 100;
//   return TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w500);
// }

// TextStyle? textMedium(){
//   double fontSize = screenSmallDimonsion * 4.5 / 100;
//   return TextStyle(color: Color.fromARGB(255, 231, 231, 231), fontSize: fontSize, fontWeight: FontWeight.w300);
// }

// TextStyle? textSmall(){
//   double fontSize = screenSmallDimonsion * 4 / 100;
//   return TextStyle(color: Colors.white70, fontSize: fontSize, fontWeight: FontWeight.w200);
// }




TextStyle? textLarge(){
  double fontSize = screenDimonsion(screenWidth*6.5/100, screenHeight*6.5/100,screenWidth*3.5/100);
  return TextStyle(color: Colors.white, fontSize: fontSize, fontWeight: FontWeight.w500);
}

TextStyle? textMedium(){
  double fontSize = screenDimonsion(screenWidth*4.5/100, screenHeight*4.5/100,screenWidth*2.5/100);
  return TextStyle(color: Color.fromARGB(255, 231, 231, 231), fontSize: fontSize, fontWeight: FontWeight.w300);
}

TextStyle? textSmall(){
  double fontSize = screenDimonsion(screenWidth*4/100, screenHeight*4/100,screenWidth*2/100);
  return TextStyle(color: Colors.white70, fontSize: fontSize, fontWeight: FontWeight.w200);
}
