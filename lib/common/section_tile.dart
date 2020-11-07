import 'package:flutter/material.dart';
import 'package:kittle/theme/app_text_style.dart';

class SectionTile extends StatelessWidget {
  final String title;

  SectionTile({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(title, style: AppTextStyle.caption1),
    );
  }
}
