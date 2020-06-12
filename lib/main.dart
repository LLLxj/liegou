import 'package:flutter/material.dart';
import 'package:liegou/routers/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:liegou/routers/application.dart';
import 'package:liegou/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  final _BodyBackground = const Color(0xFFFFFFFF);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router=router;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{


  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomBar',
      theme: ThemeData.light(), //默认主题导航
      home: NavBottom(),
      // home: BottomNavigation(),
      // theme:ThemeData(
      //   primarySwatch:Colors.lightBlue, 
      // ), // 自定义主题导航
      // home: BottomAppBarDemo(),// 自定义导航样式

    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'animation-start',
  //     theme: ThemeData(
  //       primarySwatch:Colors.lightBlue,
  //     ),
  //     home: StartScreen()
  //   );
  // }
}