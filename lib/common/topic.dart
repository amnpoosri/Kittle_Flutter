import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: icon,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(description),
              ],
            ),
          )
        ],
      ),
    );
  }
}
