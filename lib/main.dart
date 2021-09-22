import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxrickmorty/controllers/CharactersController.dart';
import 'package:getxrickmorty/services/rickandmorty_service.dart';
import './ui/home/home.dart';

void main() {
  // initialize before run app the services and controllers
  Get.put(RickAndMortyService());
  Get.put(CharactersController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick & Morty App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
