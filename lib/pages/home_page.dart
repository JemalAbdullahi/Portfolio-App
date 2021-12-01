import 'package:flutter/material.dart';
import 'package:portfolio/utils/common_string.dart';
import 'package:portfolio/utils/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: headerTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              designation,
              style: subHeaderTextStyle,
              softWrap: true,
            ),
          ),
          Text(
            description,
            style: bodyTextStyle,
            softWrap: true,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(app1, style: headerTextStyle),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(position, style: positionTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              app1Desc,
              style: bodyTextStyle,
              softWrap: true,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(app2, style: headerTextStyle),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(position, style: positionTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Text(
              app2Desc,
              style: bodyTextStyle,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
