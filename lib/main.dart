import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {

  //初始化数据源
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'listview',
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('listview'),
        ),
        body :new ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: entries.length,
          itemBuilder: (context,index){
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          //分割构造器
          separatorBuilder: (context,index){
            //分割组件
            return new Divider(color: Colors.grey,);
          },
        ),
      ),
    );
  }
}