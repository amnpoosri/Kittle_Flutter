import 'package:flutter/material.dart';
import 'package:kittle/common/header.dart';
import 'package:kittle/common/histogram/histogram.dart';
import 'package:kittle/common/topic.dart';
import 'package:kittle/mock/data.dart';
import 'package:kittle/models/character.dart';
import 'package:kittle/pages/sections/attention_span_section/attention_span_section.dart';
import 'package:kittle/pages/sections/available_character_section/available_character_section.dart';
import 'package:kittle/pages/sections/review_section/review_section.dart';
import 'package:kittle/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Character selectedCharacter;

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
          SizedBox(
            height: 20,
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
          SizedBox(
            height: 20,
          ),
          Histogram(
            items: movements,
            color: AppColors.purple,
          )
        ],
      ),
    );
  }

  Widget _buildSelectedCharacter() {
    return Align(
      alignment: Alignment.center,
      child: AspectRatio(
          aspectRatio: 3, child: Image.asset(selectedCharacter.image)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isShowAnalytics = selectedCharacter != null;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.shark,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(onLogoPress: () {
                setState(() {
                  selectedCharacter = null;
                });
              }),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!isShowAnalytics) ...[
                      AvailableCharacterSection(
                          onCharacterTap: (Character character) {
                        setState(() {
                          selectedCharacter = character;
                        });
                      }),
                      _buildCharacterLikenessStats(),
                    ],
                    if (isShowAnalytics) ...[
                      _buildSelectedCharacter(),
                      _buildMovementStats(),
                      AttentionSpanSection(),
                    ],
                    if (!isShowAnalytics) FeedbackSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
