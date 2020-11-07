import 'package:flutter/material.dart';
import 'package:kittle/common/header.dart';
import 'package:kittle/common/histogram/histogram.dart';
import 'package:kittle/common/topic.dart';
import 'package:kittle/mock/data.dart';
import 'package:kittle/pages/sections/available_character_section/available_character_section.dart';
import 'package:kittle/pages/sections/review_section/review_section.dart';
import 'package:kittle/theme/app_colors.dart';
import 'package:kittle/theme/app_text_style.dart';

class HomePage extends StatelessWidget {
  Widget _buildCharacterLikenessStats() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Topic(
            title: 'Characters',
            description:
                'Characters children find appealing and distracted the most',
            icon: Icon(Icons.favorite, color: Colors.red, size: 36),
          ),
          Histogram(
            items: characters,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  Widget _buildMovementStats() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Topic(
            title: 'Character movements',
            description:
                'Character movements that make children smile the most',
            icon:
                Icon(Icons.directions_walk, color: AppColors.emerald, size: 36),
          ),
          Histogram(
            items: movements,
            color: AppColors.purple,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shark,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvailableCharacterSection(),
                  _buildCharacterLikenessStats(),
                  _buildMovementStats(),
                  FeedbackSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
