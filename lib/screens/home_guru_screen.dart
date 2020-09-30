import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school/components/box_kotak.dart';
import 'package:school/utilities/constants.dart';

class HomeGuruScreen extends StatefulWidget {
  HomeGuruScreen({Key key}) : super(key: key);

  @override
  _HomeGuruScreenState createState() => _HomeGuruScreenState();
}

class _HomeGuruScreenState extends State<HomeGuruScreen> {
  final double width = 6;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12, 14, 10);
    final barGroup2 = makeGroupData(1, 16, 12, 10, 5);
    final barGroup3 = makeGroupData(2, 18, 5, 19, 10);
    final barGroup4 = makeGroupData(3, 20, 16, 12, 14);
    final barGroup5 = makeGroupData(4, 17, 6, 16, 17);
    final barGroup6 = makeGroupData(5, 19, 1.5, 19, 10);
    final barGroup7 = makeGroupData(6, 10, 1.5, 10, 19);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  BarChartGroupData makeGroupData(
      int x, double y1, double y2, double y3, double y4) {
    return BarChartGroupData(barsSpace: 1, x: x, barRods: [
      BarChartRodData(
        y: y1,
        color: masukC,
        width: width,
      ),
      BarChartRodData(
        y: y2,
        color: izinC,
        width: width,
      ),
      BarChartRodData(
        y: y3,
        color: telatC,
        width: width,
      ),
      BarChartRodData(
        y: y4,
        color: alpaC,
        width: width,
      ),
    ]);
  }

  Widget _header() {
    return Container(
      width: double.infinity,
      decoration: boxHeader,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Absen Harian",
              style: titleStyle(18),
            ),
          ),
          Divider(
            color: white,
            thickness: 2,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "20 September",
              style: TextStyle(
                color: white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxKotak(
                  widht: 52,
                  color: "6ab7ff",
                  state: "2000",
                  title: "Total",
                ),
                BoxKotak(
                  widht: 52,
                  color: "B4FF7F",
                  state: "2000",
                  title: "Masuk",
                ),
                BoxKotak(
                  widht: 52,
                  color: "F2C94C",
                  state: "2000",
                  title: "Izin",
                ),
                BoxKotak(
                  widht: 52,
                  color: "FC7EC2",
                  state: "2000",
                  title: "Telat",
                ),
                BoxKotak(
                  widht: 52,
                  color: "FC7E7E",
                  state: "2000",
                  title: "Alpa",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _grafik() {
    return Container(
      width: double.infinity,
      decoration: bkotak("1E88E5"),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Grafik Siswa dalam Seminggu",
              style: titleStyle(16),
            ),
          ),
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: bkotak("ffffff"),
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      textStyle: TextStyle(
                          color: const Color(0xff7589a2),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      margin: 5,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Mn';
                          case 1:
                            return 'Te';
                          case 2:
                            return 'Wd';
                          case 3:
                            return 'Tu';
                          case 4:
                            return 'Fr';
                          case 5:
                            return 'St';
                          case 6:
                            return 'Sn';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(
                      showTitles: true,
                      textStyle: TextStyle(
                          color: const Color(0xff7589a2),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      margin: 15,
                      reservedSize: 14,
                      getTitles: (value) {
                        if (value == 0) {
                          return '1K';
                        } else if (value == 10) {
                          return '5K';
                        } else if (value == 19) {
                          return '10K';
                        } else {
                          return '';
                        }
                      },
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: showingBarGroups,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _beritaTerkini() {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.all(20),
      decoration: bkotak("1E88E5"),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Berita Terkini", style: titleStyle(16)),
            Container()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          _header(),
          _grafik(),
          _beritaTerkini(),
        ],
      ),
    );
  }
}
