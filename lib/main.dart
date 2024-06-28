import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'WebViewApp.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      //home: const WebViewApp(),
      home: const HomePage(),
    ),
  );
}

