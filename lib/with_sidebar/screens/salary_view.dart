import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salary"),
      ),
      body: Container(
        color: Colors.blueGrey
      ),
    );
  }
}
