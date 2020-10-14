import 'package:flutter/material.dart';
import 'package:school/components/components.dart';
import 'package:school/utilities/constants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Column(
        children: [
          _header(),
          _profileName(),
          _tabBar(),
          Flexible(
            flex: 1,
            child: TabBarView(
              controller: controller,
              children: [
                Text("hai"),
                Text("embo"),
              ],
            ),
          )
        ],
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
      controller: controller,
      labelColor: black,
      tabs: [
        Tab(text: "Pesan untuk guru"),
        Tab(text: "Jadwal mapel"),
      ],
    );
  }

  Row _profileName() {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Naswa Aulia Sabila",
              style: txt(20, black),
            ),
            Text(
              "Siswa, XII RPL 2",
              style: txt(15, black),
            ),
          ],
        )
      ],
    );
  }

  Container _header() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OvalButton(
              onTap: () {},
            ),
            Text(
              "Profil",
              style: topTxt(24),
              textAlign: TextAlign.center,
            ),
            OvalButton(
              onTap: () {},
              icon: Icons.menu,
            ),
          ],
        ),
      ),
    );
  }
}
