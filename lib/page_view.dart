import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Center(
          child: Image(
            image: AssetImage('assets/images/Group 11706.png'),
          ),
        ),
        Center(
          child: Image(
            image: AssetImage('assets/images/Group 11706.png'),
          ),
        ),
        Center(
            child: Image(
          image: AssetImage('assets/images/Group 11706.png'),
        ))
      ],
    );
  }
}
