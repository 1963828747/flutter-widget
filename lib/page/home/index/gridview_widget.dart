import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  GridViewWidget({Key key}) : super(key: key);

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('GridView'),
            centerTitle: true,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_arrow_left)),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('普通GridView'),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: GridView(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 100,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 1),
                      padding: EdgeInsets.all(20),
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.redAccent,
                        ),
                      ]),
                ),
                Text('GridView.builder'),
                Expanded(
                  child: Container(
                    height: 300,
                  child: GridView.builder(
                      itemCount: 6,
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 10,
                          width: 10,
                          color: Colors.lightBlueAccent,
                        );
                      }),
                  ),
                ),
                Text('GridView.count'),
                Container(
                  height: 300,
                  child: GridView.count(
                    padding: EdgeInsets.all(20),
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),SizedBox(
                        width: 20,
                        height: 20,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                        ),
                      ),

                    ],
                  )
                ),
              ],
            ),
          )),
    );
  }
}
