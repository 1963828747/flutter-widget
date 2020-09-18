import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ComputerPage extends StatefulWidget {
  @override
  _ComputerPageState createState() => _ComputerPageState();
}

class _ComputerPageState extends State<ComputerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
//      appBar: AppBar(
//        title: Text('计算机'),
//        centerTitle: true,
//        leading: GestureDetector(
//            onTap: () {
//              Navigator.pop(context);
//            },
//            child: Icon(Icons.keyboard_arrow_left)),
//      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  height: 100,
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  height: 300,
                  child: GridView.builder(
                      itemCount: 20,
                      physics: BouncingScrollPhysics(),//去除水波
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),

                          ),
                          width: MediaQuery.of(context).size.width/4-32,
                          child: Text('AC',style: TextStyle(fontSize: 20,color: Colors.black),),
                        );
                      }),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
