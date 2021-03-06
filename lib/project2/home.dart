import 'package:flutter/material.dart';
import 'package:widget_tests/project2/right_container.dart';

import 'left_container.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        LeftContainer(),
        RightContainer()
      ],
    );
  }
}
