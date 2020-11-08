import 'package:flutter/material.dart';
import 'package:kittle/models/review.dart';
import 'package:kittle/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:universal_html/html.dart' as html;

import 'package:flutter/foundation.dart' show kIsWeb;

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

class ReviewCard extends StatefulWidget {
  final Review review;

  const ReviewCard({Key key, this.review}) : super(key: key);

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  _launchURL() async {
    final String url = widget.review.link;
    print(url);
    if(kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      if (await canLaunch(url)) {
        print(url);
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: _launchURL,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.only(top: 20.0 * 3),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: AppColors.sunGlow,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -55),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: AnimatedContainer(
                    duration: duration,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [if (!isHover) kDefaultCardShadow],
                      image: DecorationImage(
                        image: AssetImage(widget.review.image),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.review.description,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20.0 * 2),
              Text(
                '- ${widget.review.name}',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
