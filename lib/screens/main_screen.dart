import 'package:flutter/material.dart';
import 'package:pasta_flutter/screens/record_screen.dart';
import 'camera_screen.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
  }

class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: Center(
                child: Container(
                  child: Text('visual shows here'),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(child: Text('passing pasta image'),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CameraScreen();
                }));
              }),
            ),
            Expanded(
              child: GestureDetector(child: Text('recorded table data'),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RecordScreen();
                }));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
