import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kittle/theme/app_text_style.dart';

class Topic extends StatelessWidget {
  final String title;
  final String description;
  final Widget icon;

  Topic(
      {@required this.title, @required this.description, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: icon,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(36),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyle.caption1),
                  Text(
                    description,
                    style: AppTextStyle.body1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
