import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CameraScreen();
  }

class _CameraScreen extends State<CameraScreen>{
  Future getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      var _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FloatingActionButton(onPressed: () { getImageFromGallery(); },)),

    );
  }
}