import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class RoundedProfileButtonV2 extends StatelessWidget {
  final String name;
  final Object image;
  final String status;
  final Function onTap;

  RoundedProfileButtonV2(
      {Key key, this.image, this.name, this.status, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, contraints) {
      if (contraints.maxHeight > 600) {
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: size.width * 0.9,
            height: size.height * 0.07,
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.06,
              horizontal: size.width * 0.04,
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: greyColor, borderRadius: BorderRadius.circular(30)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              CircleAvatar(backgroundImage: image),
              SizedBox(width: size.width * 0.02),
              GestureDetector(
                onTap: onTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,
                        style: TextStyle(
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                          fontSize: 18,
                        )),
                    Text(status,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: grey2Color,
                          fontFamily: "Poppins-Regular",
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
            ]),
          ),
        );
      } else {
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: size.width * 0.9,
            height: size.height * 0.06,
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.04,
              horizontal: size.width * 0.04,
            ),
            padding: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
                color: greyColor, borderRadius: BorderRadius.circular(30)),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              CircleAvatar(
                backgroundImage: image,
              ),
              SizedBox(width: size.width * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name,
                      style: TextStyle(
                        color: blackColor,
                        fontFamily: "Poppins-Medium",
                        fontSize: 16,
                      )),
                  Text(status,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: grey2Color,
                        fontFamily: "Poppins-Regular",
                        fontSize: 10,
                      )),
                ],
              ),
            ]),
          ),
        );
      }
    });
  }
}
