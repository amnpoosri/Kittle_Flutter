import 'package:flutter/material.dart';
import 'package:kittle/common/histogram/histogram_bar.dart';

class Histogram<T> extends StatelessWidget {
  final List<dynamic> items;
  final Color color;

  Histogram({@required this.items, @required this.color});

  List<Widget> _buildHistogramBars(List<dynamic> items) {
    final int maxValue = items[0].value;

    return items
        .map((e) => HistogramBar(
              name: e.name,
              value: e.value,
              percentage: e.value / maxValue,
              color: color,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    items.sort((a, b) => a.value < b.value ? 1 : 0);

    return Container(
      child: Column(
        children: [
          ..._buildHistogramBars(items),
        ],
      ),
    );
  }
}
