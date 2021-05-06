import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/styles/text_style.dart';

class CategoryContainer extends StatelessWidget {
  @required
  String text;
  String imagePath;
  CategoryContainer({this.imagePath = "", this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 120,
      height: 120,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(7),
              child: Image(
                fit: BoxFit.fitHeight,
                height: 20,
                width: 20,
                image: AssetImage(imagePath),
              ),
            ),
            Text(
              text,
              style: Styles.titleTextStyle,
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue[50]),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
    throw UnimplementedError();
  }
}
