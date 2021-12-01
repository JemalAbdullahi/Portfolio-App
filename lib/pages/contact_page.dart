import 'package:flutter/material.dart';
import 'package:portfolio/utils/text_style.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Contact us",
              style: headerTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            _itemWidget("Email", "jemal.abdullahi2@gmail.com"),
            _itemWidget("Mobile", "+1 (763)-291-2522"),
            _itemWidget("GitHub", "https://github.com/JemalAbdullahi"),
            _itemWidget("ToDoList-Groups",
                "https://taskmanager-group-stage.herokuapp.com/"),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(title, value) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: subHeaderTextStyle,
          ),
          Text(
            value,
            style: bodyTextStyle,
          ),
        ],
      ),
    );
  }
}
