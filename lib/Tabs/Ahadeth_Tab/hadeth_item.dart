import 'package:flutter/material.dart';
import 'Ahadeth.dart';
import 'hadeth_datils.dart';

class HadethItem extends StatelessWidget {
  AhadethModel ahadethModel;

  HadethItem(this.ahadethModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: ahadethModel);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${ahadethModel.title}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}