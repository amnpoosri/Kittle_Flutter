import 'package:flutter/material.dart';
import 'package:kittle/common/header.dart';
import 'package:kittle/common/topic.dart';
import 'package:kittle/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  Widget _buildCharacterLikenessStats() {
    return Column(
      children: [
        Topic(
          title: 'Characters',
          description: 'Character likeness',
          icon: Icon(Icons.favorite, color: Colors.red,),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.yellow,
      child: Column(
        children: [
          Header(),
          Container(
            padding: EdgeInsets.all(20),
            child: _buildCharacterLikenessStats(),
          )
        ],
      ),
    );
  }
}
