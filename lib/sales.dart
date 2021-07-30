import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tally_app/my_flutter_app_icons.dart';

class SalesDetails extends StatefulWidget {
  @override
  _SalesDetailsState createState() => _SalesDetailsState();
}

class _SalesDetailsState extends State<SalesDetails> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarManager.setStyle(StatusBarStyle.LIGHT_CONTENT);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff192B38),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          MyFlutterApp.back,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sales',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        MyFlutterApp.search,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        MyFlutterApp.calender,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        MyFlutterApp.share,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        MyFlutterApp.menu,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '₹2,58,063',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xffDE090B)),
                          ),
                          Text(
                            '01 Apr 18 to 31 Mar 19',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xffFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Text(
                      'Gross',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Group By:',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    // Text(
                    //   'Ledger',
                    //   style: GoogleFonts.poppins(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 14,
                    //       color: Color(0xffFFFFFF)),
                    // ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(right: 15),
                    //   child: Icon(
                    //     Icons.keyboard_arrow_down,
                    //     color: Colors.white,
                    //     size: 30,
                    //   ),
                    // ),
                    DropdownButton(
                      value: null,
                      hint: Padding(
                        padding: EdgeInsets.only(left: 50.0),
                        child: Text(
                          'Ledger',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)),
                      isDense: true,
                      icon: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      items: buildDropdownMenuItems([
                        'Ledger',
                        'Bills',
                        'Ledger Group',
                        'Voucher Type',
                        'Stock Item',
                        'Stock Group',
                        'Stock Category',
                        'Cost Center',
                        'Cost Category',
                        'Month'
                      ]),
                      underline: SizedBox(
                        height: 0,
                      ),
                      //underline: SizedBox(),
                      onChanged: (item) {},
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF9F6F6),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      '₹22,77,210',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Sales',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      '₹-2,120',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Return/Credit Notes',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SfCartesianChart(
          //     primaryXAxis: CategoryAxis(),
          //     tooltipBehavior: TooltipBehavior(
          //         enable: true,
          //         header: '',
          //         color: Colors.white,
          //         textStyle: GoogleFonts.nunitoSans(color: Colors.black)),
          //     series: <LineSeries<SalesData, String>>[
          //       LineSeries<SalesData, String>(
          //           // Bind data source
          //           dataSource: <SalesData>[
          //             SalesData('Jan', 35),
          //             SalesData('Feb', 28),
          //             SalesData('Mar', 34),
          //             SalesData('Apr', 32),
          //             SalesData('May', 40)
          //           ],
          //           xValueMapper: (SalesData sales, _) => sales.year,
          //           yValueMapper: (SalesData sales, _) => sales.sales)
          //     ]),
          SizedBox(
            height: 10,
          ),
          Container(
            //width: 100,
            height: 320,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LineChart(LineChartData(
                lineTouchData: LineTouchData(
                  getTouchedSpotIndicator: defaultTouchedIndicators,
                  getTouchLineEnd: defaultGetTouchLineStart,
                  getTouchLineStart: defaultGetTouchLineStart,
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Color(0xffffffff).withOpacity(0.8),
                    getTooltipItems: defaultLineTooltipItem,
                  ),
                  touchCallback: (LineTouchResponse touchResponse) {},
                  handleBuiltInTouches: true,
                ),
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    getTextStyles: (value) => GoogleFonts.poppins(
                      color: Color(0xff7C828A),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    margin: 10,
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 10:
                          return '10';
                        case 20:
                          return '20';
                        case 30:
                          return '30';
                      }
                      return '';
                    },
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => GoogleFonts.poppins(
                      color: Color(0xff192B38),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 100000:
                          return '1,00,000';
                        case 200000:
                          return '2,00,000';
                        case 300000:
                          return '3,00,000';
                        case 400000:
                          return '4,00,000';
                        case 500000:
                          return '5,00,000';
                        case 600000:
                          return '6,00,000';
                      }
                      return '';
                    },
                    margin: 30,
                    reservedSize: 60,
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.transparent,
                    ),
                    left: BorderSide(
                      color: Colors.transparent,
                    ),
                    right: BorderSide(
                      color: Colors.transparent,
                    ),
                    top: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                minX: 4,
                maxX: 50,
                maxY: 600000,
                minY: 0,
                lineBarsData: linesBarData1(),
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '272',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Coal India',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '23 Mar 19',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      '₹22,168',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'PAID',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff6BC950)),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Divider(
            thickness: 1,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '273',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Coal India',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '22 Mar 19',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      '₹22,168',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'UNPAID',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffDE090B)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '274',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Coal India',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '28 Mar 19',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      '₹22,168',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff6BC950)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '275',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Coal India',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '3 Mar 19',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      '₹22,168',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff192B38)),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'PAID',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff6BC950)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> buildDropdownMenuItems(List menu) {
    List<DropdownMenuItem<String>> items = [];
    for (String li in menu) {
      items.add(
        DropdownMenuItem(
          value: li,
          child: Column(
            children: [
              Container(
                //width: 90,
                height: 48,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        li,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff192B38)),
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                height: 1,
              )
            ],
          ),
        ),
      );
    }
    return items;
  }

  List<LineTooltipItem> defaultLineTooltipItem(List<LineBarSpot> touchedSpots) {
    return touchedSpots.map((LineBarSpot touchedSpot) {
      final textStyle = GoogleFonts.nunitoSans(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );
      return LineTooltipItem(
          touchedSpot.x.toString() + ': ' + touchedSpot.y.toString(),
          textStyle);
    }).toList();
  }

  List<TouchedSpotIndicatorData> defaultTouchedIndicators(
      LineChartBarData barData, List<int> indicators) {
    return indicators.map((int index) {
      /// Indicator Line
      var lineColor = barData.colors[0];
      if (barData.dotData.show) {
        lineColor = Color(0xffDE090B);
      }
      const lineStrokeWidth = 4.0;
      final flLine = FlLine(color: lineColor, strokeWidth: lineStrokeWidth);

      var dotSize = 5.0;
      if (barData.dotData.show) {
        dotSize = 4.0 * 1.8;
      }

      final dotData = FlDotData(
          getDotPainter: (spot, percent, bar, index) =>
              _defaultGetDotPainter(spot, percent, bar, index, size: dotSize));

      return TouchedSpotIndicatorData(flLine, dotData);
    }).toList();
  }

  FlDotPainter _defaultGetDotPainter(
      FlSpot spot, double xPercentage, LineChartBarData bar, int index,
      {double size}) {
    return FlDotCirclePainter(
      radius: size,
      color: Color(0xffDE090B),
      strokeColor: Colors.white,
    );
  }

  double defaultGetTouchLineStart(LineChartBarData barData, int spotIndex) {
    return -double.infinity;
  }

  List<LineChartBarData> linesBarData1() {
    final lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(5, 151000),
        FlSpot(10, 201000),
        FlSpot(13, 75000),
        FlSpot(17, 95000),
        FlSpot(20, 110000),
        FlSpot(23, 130000),
        FlSpot(30, 120000),
        FlSpot(35, 90000),
        FlSpot(40, 20000),
      ],
      isCurved: true,
      colors: [
        const Color(0xffDE090B),
      ],
      barWidth: 1,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      // lineChartBarData2,
      // lineChartBarData3,
    ];
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
