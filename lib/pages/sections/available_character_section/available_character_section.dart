import 'package:flutter/material.dart';
import 'package:kittle/common/section_tile.dart';
import 'package:kittle/mock/data.dart';
import 'package:kittle/models/character.dart';
import 'package:kittle/theme/app_text_style.dart';

class AvailableCharacterSection extends StatelessWidget {
  final Function(Character character) onCharacterTap;

  AvailableCharacterSection({@required this.onCharacterTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTile(title: 'Characters'),
        Wrap(
          children: [
            ...characters
                .map(
                  (e) => Container(
                    margin: EdgeInsets.only(right: 16, top: 16, bottom: 16),
                    child: InkWell(
                      onTap: () {
                        onCharacterTap(e);
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              child: Image.asset(e.image),
                              backgroundColor: Colors.transparent,
                              radius: 36,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                e.name,
                                style: AppTextStyle.body1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ],
    );
  }
}
