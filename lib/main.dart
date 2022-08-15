import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_api/home_page.dart';
import 'package:rest_api/model.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/rest_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}


