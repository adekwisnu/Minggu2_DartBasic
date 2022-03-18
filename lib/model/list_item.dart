import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hallo/model/tourism_place.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  final Function onCheckboxClick;

  const ListItem({
    required this.place,
    required this.isDone,
    required this.onCheckboxClick
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(place.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(place.location),
                ],
              ),
            ),
          ),
           Container(
             child: GestureDetector(
              onTap: () {
                onCheckboxClick();
              },
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDone ? Color(0xff4265D6) : Colors.white,
                  border: Border.all(
                      color: isDone ? Color(0xff4265D6) : Colors.grey.shade700,
                      width: 1),
                ),
              ),
                     ),
           ),
        ],
      ),
    );
  }
}
