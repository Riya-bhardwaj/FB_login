import 'package:flutter/material.dart';
import './homepage.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'login page', home:Facebookpage());
  }
}


