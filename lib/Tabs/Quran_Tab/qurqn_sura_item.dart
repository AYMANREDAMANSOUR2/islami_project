import 'package:flutter/material.dart';
class QuranSuraItem extends StatelessWidget {
  String names ;
  QuranSuraItem(this.names);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("${names }",textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
