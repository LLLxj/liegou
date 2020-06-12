import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liegou/pages/home/home_page.dart';
import 'package:liegou/pages/category/category_page.dart';
import 'package:liegou/pages/profit_center/profit_center_page.dart';
import 'package:liegou/pages/person_center/person_center_page.dart';
// import 'package:liegou/widget/bottomDraw.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:liegou/common/eventBus.dart';



class NavBottom extends StatefulWidget {
  
  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> with SingleTickerProviderStateMixin{
  
// class _NavBottomState extends State<NavBottom> with AutomaticKeepAliveClientMixin{

  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      title:Text('首页',style:TextStyle(fontSize: 14.0))
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      title:Text('分类',style:TextStyle(fontSize: 14.0))
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.home),
      title:Text('权益中心',style:TextStyle(fontSize: 14.0))
    ),
    BottomNavigationBarItem(
      icon:Icon(CupertinoIcons.profile_circled),
      title:Text('个人中心',style:TextStyle(fontSize: 14.0))
    )
    // BottomNavigationBarItem(
    //   icon:Icon(CupertinoIcons.profile_circled),
    //   title:Text('我的',style:TextStyle(fontSize: 14.0))
    // ),
  ];

  // @override
  // bool get wantKeepAlive => true;

  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    ProCenterPage(),
    PerCenterPage(),
  ];

  int _currentIndex = 0;
  var currentPage;
  bool botWrap = false;

  @override
  void initState(){
    currentPage = tabBodies[_currentIndex];
    // eventBus.on<MovieBotDragStatus>().listen((event) {
    //   setState(() {
    //     botWrap = event.status;
    //   });
    // });
    super.initState();
  }

  Widget _getBottom() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(112, 188, 178, 1.0),
        bottomNavigationBar: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: bottomTabs,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              currentPage = tabBodies[_currentIndex];
            });
          },
        ),
        body:IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            HomePage(),
            CategoryPage(),
            ProCenterPage(),
            PerCenterPage()
          ]
        ),
        // body: currentPage,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width:750, height:1334)..init(context);
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Color.fromRGBO(112, 188, 178, 1.0),
            bottomNavigationBar: BottomNavigationBar(
              type:BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: bottomTabs,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  currentPage = tabBodies[_currentIndex];
                });
              },
            ),
            body:IndexedStack(
              index: _currentIndex,
              children: <Widget>[
                HomePage(),
                CategoryPage(),
                ProCenterPage(),
                PerCenterPage()
              ]
            ),
            // body: currentPage,
          ),
          // Positioned(
          //   bottom: ScreenUtil().setHeight(80.0) - height,
          //   left: 0,
          //   child: DragContainer()
          // )
        ],
      )
    );
  }
}