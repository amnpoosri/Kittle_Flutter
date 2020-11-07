import 'package:flutter/material.dart';
import 'package:kittle/assets/image_assets.dart';

class Header extends StatelessWidget {
  final Function onLogoPress;

  Header({@required this.onLogoPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: onLogoPress,
            child: Container(
              height: 120,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image.asset(ImageAssets.appLogo),
            ),
          )
        ],
      ),
    );
  }
}
