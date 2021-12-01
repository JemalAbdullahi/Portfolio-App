import 'package:flutter/material.dart';
import 'package:portfolio/utils/AppColors.dart';
import 'package:portfolio/widgets/svg_loader.dart';

Widget navigationMenu(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          svgLoader(icon, height: height, width: width),
          Container(
            height: 8,
            width: 8,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: isSelected ? navigationSelectionColor : Colors.transparent,
            ),
          ),
          
        ],
      ),
    ),
  );
}
