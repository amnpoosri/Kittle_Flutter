import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kittle/common/section_tile.dart';
import 'package:kittle/mock/data.dart';
import 'package:kittle/pages/sections/review_section/review_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTile(
          title: "Customer Reviews",
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 340.0,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ...reviews
                  .map((e) => ReviewCard(
                        review: e,
                      ))
                  .toList(),
            ],
          ),
        )
      ],
    );
  }
}
