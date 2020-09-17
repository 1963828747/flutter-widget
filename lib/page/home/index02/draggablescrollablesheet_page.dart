import 'package:flutter/material.dart';

class DraggableScrollableSheet_Page extends StatefulWidget {
  @override
  _DraggableScrollableSheet_PageState createState() =>
      _DraggableScrollableSheet_PageState();
}

class _DraggableScrollableSheet_PageState
    extends State<DraggableScrollableSheet_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('底部栏目'),
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left)),
        ),
        body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width-20,
            height: MediaQuery.of(context).size.height,
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
                maxChildSize: 1,
                minChildSize: 0.4,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    ),
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(title: Text('评论 $index',style: TextStyle(
                          color: Colors.white,fontSize: 16,
                        ),));
                      },
                    ),
                  );
                })
          ),
        ));
  }
}
