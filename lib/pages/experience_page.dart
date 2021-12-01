import 'package:flutter/material.dart';
import 'package:portfolio/utils/AppColors.dart';
import 'package:portfolio/utils/common_string.dart';
import 'package:portfolio/utils/text_style.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Personal Experience",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            _itemWidget("Current, 2021", app1),
            _itemWidget("Summer, 2021", app2),
            _itemWidget("Fall, 2020", degree),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, description) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Text(
                title,
                style: subHeaderTextStyle,
              )
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: cardBGColor,
              ),
              child: Text(description),
            ),
          )
        ],
      ),
    );
  }
}
