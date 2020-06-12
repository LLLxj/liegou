import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:liegou/pages/search/search_page.dart';

Handler searchHandle = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    return SearchPage();
  }
);
