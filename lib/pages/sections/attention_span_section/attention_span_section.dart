import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kittle/common/section_tile.dart';

class AttentionSpanSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AttentionSpanSectionState();
}

class AttentionSpanSectionState extends State<AttentionSpanSection> {
  BarChartGroupData _buildBar({x: int, y: int}) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y,
          colors: [Colors.lightBlueAccent, Colors.greenAccent],
          width: 20,
        )
      ],
      showingTooltipIndicators: [0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTile(
          title: "Attention span for each animtion (in seconds)",
        ),
        SizedBox(height: 20,),
        AspectRatio(
          aspectRatio: 3,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            color: const Color(0xff2c4260),
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 40,
                barTouchData: BarTouchData(
                  enabled: false,
                  touchTooltipData: BarTouchTooltipData(
                    tooltipBgColor: Colors.transparent,
                    tooltipPadding: const EdgeInsets.all(0),
                    tooltipBottomMargin: 8,
                    getTooltipItem: (
                      BarChartGroupData group,
                      int groupIndex,
                      BarChartRodData rod,
                      int rodIndex,
                    ) {
                      return BarTooltipItem(
                        rod.y.round().toString(),
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => const TextStyle(
                        color: Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    margin: 20,
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Fire';
                        case 1:
                          return 'Yes';
                        case 2:
                          return 'No';
                        case 3:
                          return 'Eat';
                        case 4:
                          return 'Roar';
                        case 5:
                          return 'Jump';
                        case 6:
                          return 'Die';
                        case 7:
                          return 'Idle';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(showTitles: false),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                barGroups: [
                  _buildBar(x: 0, y: 25),
                  _buildBar(x: 1, y: 4),
                  _buildBar(x: 2, y: 2),
                  _buildBar(x: 3, y: 12),
                  _buildBar(x: 4, y: 10),
                  _buildBar(x: 5, y: 13),
                  _buildBar(x: 6, y: 3),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
