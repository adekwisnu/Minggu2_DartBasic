import 'package:flutter/material.dart';
import 'package:hallo/model/tourism_place.dart';

class DoneTourismList extends StatelessWidget {
  final List<TourismPlace> doneTourismPlaceList;
  const DoneTourismList(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = doneTourismPlaceList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  place.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
