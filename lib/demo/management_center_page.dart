import 'package:flutter/material.dart';
import 'package:widget/demo/my_income_page.dart';

///管理中心
class ManagementCenterPage extends StatefulWidget {
  @override
  _ManagementCenterPageState createState() => _ManagementCenterPageState();
}

class _ManagementCenterPageState extends State<ManagementCenterPage> {
  List<Map> _index = [
    {
      "text": "我的收益",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
    {
      "text": "保证金额",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
    {
      "text": "竞价记录",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
    {
      "text": "发布管理",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
    {
      "text": "系统消息",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
    {
      "text": "分类设置",
      "Icon": Icons.add_box,
      "url": MyincomePage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                UnconstrainedBox(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 4 / 7,
                      decoration: BoxDecoration(
//                  使用ShapeDecoration可以做出各种形状
//                  斜切角: BeveledRectangleBorder
//                  圆角: RoundedRectangleBorder
//                  超椭圆: SuperellipseShape
//                  体育场: StadiumBorder
//                  圆形: CircleBorder
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg'),
                              fit: BoxFit.cover))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            size: 20,
                            color: Colors.white,
                          )),
                      Spacer(),
                      Icon(Icons.linear_scale, size: 20, color: Colors.white),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top:
                      (MediaQuery.of(context).size.width * 4 / 7 - 120) * 2 / 5,
                  left: (MediaQuery.of(context).size.width - 120) / 2,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Winnie',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          '网值ID' + "88888888",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        UnconstrainedBox(
                          child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://imagepphcloud.thepaper.cn/pph/image/71/675/575.jpg'),
                                      fit: BoxFit.cover))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '4698',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text(
                                  '粉丝',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  '168',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text(
                                  '关注',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  '26749',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Text(
                                  '人气',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                height: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: _index.length,
                    itemBuilder: (BuildContext, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          _index[index]["url"]));
                            },
                            child: Container(
                              color: Colors.white,
//                      padding: EdgeInsets.only(top: index==0?0:10),
                              child: ListTile(
                                leading: Icon(Icons.add_box),
                                title: Text(
                                  _index[index]["text"],
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            color: Colors.grey[200],
                          ),
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
