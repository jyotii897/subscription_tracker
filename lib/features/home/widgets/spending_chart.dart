import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sub_notifier_app/domain/repositories/subscription/subscription.dart';
import 'package:sub_notifier_app/theme/theme.dart';

class SpendingChart extends StatelessWidget {
  const SpendingChart({super.key, required this.subscriptions});

  final List<SubscriptionModel> subscriptions;

  @override
  Widget build(BuildContext context) {
    // Basic calculation: Sum of all costs
    double total = 0;
    for (var sub in subscriptions) {
      total += sub.cost;
    }

    if (subscriptions.isEmpty) return SizedBox.shrink();

    return Container(
      height: 200,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'Total Monthly: \$${total.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 20),
          Expanded(
            child: BarChart(
              BarChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        if (value.toInt() < subscriptions.length) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              subscriptions[value.toInt()].name.substring(0, 1),
                              style: TextStyle(fontSize: 10),
                            ),
                          );
                        }
                        return Text('');
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                ),
                borderData: FlBorderData(show: false),
                barGroups: subscriptions.asMap().entries.map((e) {
                  return BarChartGroupData(
                    x: e.key,
                    barRods: [
                      BarChartRodData(
                        toY: e.value.cost,
                        color: Theme.of(context).primaryColor,
                        width: 16,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
