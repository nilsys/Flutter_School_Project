import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school/screens/sign_in.dart';
import 'package:school/utilities/constants.dart';
import 'package:school/components/rounded_filter_button.dart';
import 'package:school/components/rounded_search_field.dart';
import 'package:school/components/rounded_selection_button.dart';

class SchoolsList extends StatefulWidget {
  @override
  _SchoolsListState createState() => _SchoolsListState();
}

class _SchoolsListState extends State<SchoolsList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: lightColor,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset("assets/images/sun.svg"),
            ),
            Positioned(
                left: -1502,
                top: 150,
                child: SvgPicture.asset(
                  "assets/images/house.svg",
                  width: 2000,
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Pilih sekolah kamu!",
                    style: TextStyle(
                      fontSize: 24,
                      color: blackColor,
                      fontFamily: "Poppins-Bold",
                    ),
                  ),
                  RoundedSearchField(
                    icon: Icons.search,
                    color: primaryColor,
                    conColor: whiteColor,
                    hintColor: grey4Color,
                    onChanged: (value) {},
                    hintText: "Masukkan nama sekolah!",
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: size.height * 0.7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: SingleChildScrollView(
                      child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Daftar sekolah",
                          style: TextStyle(
                            fontSize: 20,
                            color: blackColor,
                            fontFamily: "Poppins-Medium",
                          ),
                        ),
                        RoundedFilterButton(
                          allSize: 14,
                          onTap: () {},
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    RoundedSelectionButton(
                      allSize: 17,
                      desc: "Kec. Kepanjen, Malang,",
                      icon: Icons.school,
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }));
                      },
                      title: "SMKN 1 Kepanjen",
                    ),
                    RoundedSelectionButton(
                      allSize: 17,
                      desc: "Kec. Kepanjen, Malang,",
                      onTap: () {},
                      title: "SMAN 1 Kepanjen",
                      icon: Icons.school,
                    ),
                  ]))),
            )
          ],
        ));
  }
}
