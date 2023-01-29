import 'package:flutter/material.dart';

class Contact with ChangeNotifier{
  String id,name,number,img;
  Contact({ required this.id,
  required this.name,
  required this.number,
  required this.img
  });
}