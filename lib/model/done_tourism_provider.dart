import 'package:flutter/foundation.dart';
import 'package:hallo/model/done_tourism_list.dart';
import 'package:hallo/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier {
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get DoneTourismPlaceList => _doneTourismPlaceList;

  TourismDoneProvider() {
    _doneTourismPlaceList;

    void complate(TourismPlace place) {
      _doneTourismPlaceList.add(place);
      notifyListeners();
    }

    void removeTourismDone(TourismPlace place) {
      _doneTourismPlaceList.remove(place);
      notifyListeners();
    }

    void removeAllTourismDone() {
      _doneTourismPlaceList.clear();
      notifyListeners();
    }
  }
}
