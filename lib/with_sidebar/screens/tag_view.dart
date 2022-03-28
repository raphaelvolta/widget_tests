import 'package:flutter/material.dart';

class TagView extends StatelessWidget {
  const TagView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tags"),
      ),
      body: Container(
        color: Colors.blueGrey
      ),
    );
  }
}
