import 'package:flutter/material.dart';
import 'package:kittle/assets/image_assets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 66,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Image.asset(ImageAssets.appLogo),
          )
        ],
      ),
    );
  }
}
