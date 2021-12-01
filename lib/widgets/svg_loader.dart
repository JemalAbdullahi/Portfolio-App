import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/AppColors.dart';

Widget svgLoader(String image, {width = 20.0, height = 20.0}) {
  return SvgPicture.asset(
    image,
    height: height,
    width: width,
    color: iconTint,
  );
}
