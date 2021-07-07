import 'package:flutter/material.dart';
import 'package:pasta_flutter/screens/record_screen.dart';

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
            GestureDetector(child: Text('HelloWorld'),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RecordScreen();
              }));
            }),
            Text('HelloWorld'),
            Text('HelloWorld'),
          ],
        ),
      ),
    );
  }
}
