import 'package:flutter/material.dart';
import 'package:school/utilities/constants.dart';

class ProfilScreen extends StatefulWidget {
  ProfilScreen({Key key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Stack(
        children: [
          Container(
            height: (2 / 3 * 1) * MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  width: 175,
                  height: 175,
                  margin: EdgeInsets.symmetric(vertical: 45),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://cdn.idntimes.com/content-images/community/2019/02/39314892-1760390220740851-8799003549745807360-n-9c1c4b311f33b70cda10b8f956def202.jpg",
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Nama Lengkap :",
                        style: txt(20, black),
                      ),
                    ),
                    Text(
                      "Naswa Aulia Sabila",
                      style: txtChild(18, black),
                    ),
                    Divider(
                      color: black,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: Text(
                        "Kelas :",
                        style: txt(20, black),
                      ),
                    ),
                    Text(
                      "XII RPL 2",
                      style: txtChild(18, black),
                    ),
                    Divider(
                      color: black,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: Text(
                        "Jenis Kelamin :",
                        style: txt(20, black),
                      ),
                    ),
                    Text(
                      "Perempuan",
                      style: txtChild(18, black),
                    ),
                    Divider(
                      color: black,
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                      child: Text(
                        "No HP :",
                        style: txt(20, black),
                      ),
                    ),
                    Text(
                      "081335706279",
                      style: txtChild(18, black),
                    ),
                    Divider(
                      color: black,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: (2 / 3 * 1) * MediaQuery.of(context).size.height,
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Logout",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: primaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(15),
              child: GestureDetector(
                child: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
