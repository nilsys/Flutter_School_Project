import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school/components/rounded_filter_button_v2.dart';
import 'package:school/utilities/constants.dart';
import 'package:school/components/list_container.dart';
import 'package:school/components/rounded_profile_button_v2.dart';
import 'package:school/components/rounded_selection_button_v2.dart';

class Dashboardv2 extends StatefulWidget {
  @override
  _Dashboardv2State createState() => _Dashboardv2State();
}

class _Dashboardv2State extends State<Dashboardv2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: lightColor,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -2,
              top: size.height * 0.18,
              child: SvgPicture.asset("assets/images/house.svg")),
          RoundedProfileButtonV2(
            onTap: () {},
            name: "Hafid",
            status: "Status",
            image: AssetImage("assets/images/ig.png"),
          ),
          ListContainer(
            allSize: 50,
            filterButton: RoundedFilterButtonV2(
              onTap: () {},
              allSize: 16,
            ),
            selectionButton: RoundedSelectionButtonV2(
              allSize: 18,
              desc: "Desc",
              onTap: () {},
              title: "title",
              icon: Icons.insert_drive_file,
            ),
          )
        ]));
  }
}
