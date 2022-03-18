import 'package:flutter/material.dart';
import 'package:hallo/detail_screen.dart';
import 'package:hallo/main_screen.dart';
import 'package:hallo/model/done_tourism_provider.dart';
import 'package:hallo/model/tourism_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: TourismList(),
      )
    );
  }
}


