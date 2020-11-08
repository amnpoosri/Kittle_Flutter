import 'package:flutter/material.dart';
import 'package:kittle/common/histogram/linear_percent_indicator.dart';
import 'package:kittle/theme/app_colors.dart';
import 'package:kittle/theme/app_text_style.dart';

class HistogramBar extends StatelessWidget {
  final String name;
  final int value;
  final double percentage;
  final Color color;

  HistogramBar({
    @required this.name,
    @required this.value,
    @required this.percentage,
    @required this.color,
  });

  Widget _mobileLayout() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: AppTextStyle.caption2),
          SizedBox(height: 16,),
          Container(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 14,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: LinearPercentIndicator(
                        lineHeight: 28.0,
                        percent: percentage,
                        backgroundColor: Colors.transparent,
                        progressColor: color.withOpacity((percentage)),
                        animation: true,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        linearStrokeCap: LinearStrokeCap.butt,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(value.toString(), style: AppTextStyle.caption2, maxLines: 1,),
                ),
              ],
            ),
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    var useMobileLayout = shortestSide < 600;

    if(useMobileLayout) {
      return _mobileLayout();
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Text(name, style: AppTextStyle.caption2),
          ),
          Expanded(
            flex: 14,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: LinearPercentIndicator(
                lineHeight: 28.0,
                percent: percentage,
                backgroundColor: Colors.transparent,
                progressColor: color.withOpacity((percentage)),
                animation: true,
                padding: EdgeInsets.symmetric(horizontal: 16),
                linearStrokeCap: LinearStrokeCap.butt,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(value.toString(), style: AppTextStyle.caption2, maxLines: 1,),
          ),
        ],
      ),
    );
  }
}
