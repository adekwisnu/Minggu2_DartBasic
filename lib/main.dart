import 'package:flutter/material.dart';
import 'package:hallo/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/monkasel.jpg'),
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(top: 16.0),
            child: Text("Surabaya Submarine Monument", textAlign: TextAlign.center, style: TextStyle(fontSize: 30.3, fontWeight: FontWeight.bold))),
            Container(
           margin: EdgeInsets.symmetric(vertical: 16.0), 
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Column(
                 children: [
                   Icon(Icons.calendar_today ),
                   Text('Open'),
                 ],
               ),
                Column(
                  children : [
                  Icon(Icons.access_time_filled),
                   Text('09.00-10.00'),
                  ],
                ),
                Column(
                  children : [
                  Icon(Icons.attach_money),
                   Text('Rp.10.000'),
                  ],
                ),
             ],
           )
          ),
           Container(
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0),)
          ), 
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                child : Image.asset('assets/images/monkasel.jpg'),
                ),
              ],
                ),
          ),
        ],
      ),
    ),
  );

}
}

