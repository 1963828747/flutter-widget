import 'package:flutter/material.dart';

class DataTablePage extends StatefulWidget {
  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.keyboard_arrow_left)),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SingleChildScrollView(
                child: DataTable(
//                  sortColumnIndex: 0,
//                  sortAscending: true,
                    columns: [
                  DataColumn(label: Text('学生')),
                  DataColumn(label: Text('学号'),numeric: true),
                  DataColumn(label: Text('班级')),
                  DataColumn(label: Text('学院')),
                ], rows: [
                  DataRow(
                      selected: true,
                      cells: [
                    DataCell(
                        Text('卢本伟'),
                    showEditIcon: true,
                    ),
                    DataCell(Text('00000001')),
                    DataCell(Text('绝地求生骨灰班'),
                    placeholder: true
                    ),
                    DataCell(Text('电竞学院')),]),
                  DataRow(
                      selected: true,
                      cells: [
                    DataCell(
                      Text('张大仙'),
                      showEditIcon: true,
                    ),
                    DataCell(Text('00000002')),
                    DataCell(Text('王者荣耀精英班')),
                    DataCell(Text('电竞学院')),])
                ]),
              )
            ],
          ),
        ),
    );
  }
}
