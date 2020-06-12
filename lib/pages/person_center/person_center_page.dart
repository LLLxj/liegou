import 'package:flutter/material.dart';
// import 'package:douban/widget/bottomDraw.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:douban/components/person/person_part.dart';


class PerCenterPage extends StatefulWidget {
  @override
  _PerCenterPageState createState() => _PerCenterPageState();
}

class _PerCenterPageState extends State<PerCenterPage> {
  @override
  void initState() {

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width:750, height:1334)..init(context);
    return Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            leading: new IconButton(
              icon: Icon(Icons.settings,color:Colors.black),
              onPressed: () {
                print('设置');
              },
            ),
            centerTitle: true,
            title: Text(
              "个人中心",
              style: TextStyle(
                color:Colors.black,
                fontSize: ScreenUtil().setSp(30.0),
                fontWeight: FontWeight.bold
              ),
            ),
            flexibleSpace: new FlexibleSpaceBar(
              // background: Image.asset("assets/images/bg_person_center_default.webp", fit: BoxFit.fitHeight),
            ),
            expandedHeight: ScreenUtil().setHeight(460.0),
            // floating: false,
            // pinned: true,
            // snap: false,
            floating: false,
            pinned: true,
            snap: false,
            actions: <Widget>[
              new IconButton(
                icon: Icon(Icons.email,color:Colors.black),
                onPressed: () {
                  print("消息");
                },
              ),
            ],
          ),
          // _devidePart(),
          // SliverToBoxAdapter(
          //   // child: PersonPart()
          // )
        ],
      ),
    );
  }

  SliverToBoxAdapter _devidePart() {
    return SliverToBoxAdapter(
      child: Container(
        height: ScreenUtil().setHeight(20.0),
        color: const Color.fromARGB(255, 247, 247, 247),
      ),
    );
  }
}