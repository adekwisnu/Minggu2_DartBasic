import 'package:flutter/material.dart';
import 'package:hallo/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(top: 16.0),
                child: Text(place.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.3, fontWeight: FontWeight.bold))),
            Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(place.haribuka),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time_filled),
                        Text(place.jamBuka),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(place.hargaTiket),
                      ],
                    ),
                  ],
                )),
            Container(
                child: Text(
                place.deskripsi,              
                textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            )),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(place.galeri[0]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(place.galeri[1]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(place.galeri[2]),
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
