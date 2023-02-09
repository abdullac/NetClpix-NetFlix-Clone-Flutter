import 'package:netclipxsample/core/variables/dimonsions.dart';

enum BigDimonsion {
  height,
  width,
  same,
}

BigDimonsion findDimonsion() {
  return screenWidth <= screenHeight * 2 / 3
      ? BigDimonsion.height
      : screenWidth * 2 / 3 < screenHeight
          ? BigDimonsion.same
          : BigDimonsion.width;
}

///  you can use 3 type screen responsive
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
