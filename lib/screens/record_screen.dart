import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RecordScreen();

}

class _RecordScreen extends State<RecordScreen>{
  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('table data here')),
      ),
    );
  }
}