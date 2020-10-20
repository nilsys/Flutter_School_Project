import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class ListContainer extends StatelessWidget {
  final double allSize;
  final Widget filterButton;
  final Widget selectionButton;

  ListContainer(
      {Key key, this.allSize, this.filterButton, this.selectionButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double newHeightSize = allSize * 8;
    final double newPaddingandFontSize = allSize / 2.5;

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.infinity,
            height: size.height * 0 + newHeightSize,
            padding: EdgeInsets.only(
                left: newPaddingandFontSize,
                right: newPaddingandFontSize,
                top: newPaddingandFontSize),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
                child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pengumuman",
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                      fontSize: newPaddingandFontSize,
                    ),
                  ),
                  filterButton == null ? Container() : filterButton,
                ],
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              selectionButton == null ? Container() : selectionButton,
            ]))));
  }
}
