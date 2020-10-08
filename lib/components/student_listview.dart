import 'package:flutter/material.dart';

class StudentListView extends StatefulWidget {
  @override
  _StudentListViewState createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  List<Item> _data = generatedItems(10);

  Widget _buildListPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
              trailing: Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                    color: Color(0xff28DF99),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            isExpanded: item.isExpanded);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
          child: _buildListPanel(),
        ),
      ),
    );
  }
}

class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({this.expandedValue, this.headerValue, this.isExpanded = false});
}

List<Item> generatedItems(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return Item(
      headerValue: 'XII RPL $index',
      expandedValue: 'Nama Murid $index',
    );
  });
}
