import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('侧边栏'),
        centerTitle: true,
//        leading: GestureDetector(
//            onTap: (){
//              Navigator.pop(context);
//            },
//            child: Icon(Icons.keyboard_arrow_left)),
      ),
      drawer: NewWidget03(),
      endDrawer: NewWidget03(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
        child: Row(
          children: <Widget>[
            Container(
              child: Text('左侧边栏'),
            ),
            Spacer(),
            Container(
              child: Text('右侧边栏'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.keyboard_return),
      ),
    );
  }
}

class NewWidget03 extends StatelessWidget {
  const NewWidget03({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                // child: DrawerHeader(  //侧边栏头部
                //   child: Text('这是侧边栏头部'),
                //   decoration: BoxDecoration(
                //     color: Color.fromRGBO(255, 99, 57, 1),
                //     image: DecorationImage(
                //       image: AssetImage('./assets/images/walletbg.png'),
                //       fit: BoxFit.cover
                //     ),
                //   ),
                // ),
                child: UserAccountsDrawerHeader(
                  accountName: Text('小猫猫'),
                  accountEmail: Text('1234567899@qq.com'),
                  currentAccountPicture: ClipOval(
                    child: Image.network(
                      'http://img.zcool.cn/community/017ae9584154e3a8012060c8e04e06.jpg@2o.jpg',
                      width: 150,
                      height: 150, fit: BoxFit.cover,
//                  fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 99, 57, 1),
                      image: DecorationImage(
                          image: NetworkImage('http://attach.52pojie.cn/forum/201604/01/184715erqfhcfr99wcqrwh.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              )
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.home),
            ),
            title: Text('我的消息'),
          ),
          Divider(color: Colors.grey,),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text('用户中心'),
            onTap: (){
              Navigator.of(context).pop();//隐藏侧边栏
              Navigator.pushNamed(context, '/user');
            },
          ),
          Divider(color: Colors.grey,),//分割线
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('设置'),
          ),
        ],
      ),
    );
  }
}
