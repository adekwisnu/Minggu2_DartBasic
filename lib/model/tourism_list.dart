import 'package:hallo/detail_screen.dart';
import 'package:hallo/model/done_tourism_list.dart';
import 'package:hallo/model/list_item.dart';
import 'package:hallo/model/tourism_place.dart';
import 'package:flutter/material.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  State<TourismList> createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Monkasel Surabaya Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/monkasel.jpg',
        deskripsi:
            "Monumen Kapal Selam Atau Biasa Di Singkat Sebagai Monkasel Berada Di Surabaya",
        haribuka: "Buka Bendino",
        jamBuka: "08:00 - 16.00",
        hargaTiket: "Rp 5.000",
        galeri: [
          'assets/images/monkasel.jpg',
          'assets/images/monkasel.jpg',
          'assets/images/monkasel.jpg',
        ]),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Surabaya',
        imageAsset: 'assets/images/coming.jpg',
        deskripsi: "Tugu pahlawan atau yang biasa di singkat sebagai TUPAH ",
        haribuka: "Buka Bedino",
        jamBuka: "08:00 - 16.00",
        hargaTiket: "Rp 15.000",
        galeri: [
          'assets/images/monkasel.jpg',
          'assets/images/coming.jpg',
          'assets/images/nyepi.jpg',
        ]),
    TourismPlace(
        name: 'Bali Beach',
        location: 'Bali',
        imageAsset: 'assets/images/nyepi.jpg',
        deskripsi: "Bali Beach merupakan pantai ter indah di bali ",
        haribuka: "Buka Bedino",
        jamBuka: "08:00 - 16.00",
        hargaTiket: "Rp 15.000",
        galeri: [
          'assets/images/coming.jpg',
          'assets/images/nyepi.jpg',
          'assets/images/monkasel.jpg',
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wisata Surabaya'),
          actions: <Widget> [
            IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return DoneTourismList(
                      doneTourismPlaceList);
                  }));
              },icon: Icon(Icons.check),
                )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: ListItem(place: place, isDone: doneTourismPlaceList.contains(place), onCheckboxClick: (){
                setState(() {
                  if(doneTourismPlaceList.contains(place)){
                    doneTourismPlaceList.remove(place);
                    
                  }
                  else{
                    doneTourismPlaceList.add(place);
                  }
                });
              })
            );
          },
          itemCount: tourismPlaceList.length,
        ));
  }
}
