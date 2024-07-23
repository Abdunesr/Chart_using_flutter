import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:chart_graph/bar_graph/bar_data.dart';

class BarGraph extends StatelessWidget {
  BarGraph(this.weeklysummary, {super.key});
  List weeklysummary;
  @override
  Widget build(context) {
    BarData bardata = BarData(
        sunAmount: weeklysummary[0],
        monAmount: weeklysummary[1],
        tueAmount: weeklysummary[2],
        wedAmount: weeklysummary[3],
        thurAmount: weeklysummary[4],
        friAmount: weeklysummary[5],
        satAmount: weeklysummary[6]);
    bardata.intializedBarData();
    return BarChart(
      BarChartData(
        maxY: 200,
        minY: 0,
        gridData:const  FlGridData(show: false),
        borderData: FlBorderData(show: false),
        
        barGroups: bardata.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    width: 30,
                    borderRadius: BorderRadius.circular(4),
                    
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 200,
                      color:const  Color.fromARGB(129, 27, 172, 172),

                    )
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
