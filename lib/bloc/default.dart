import 'package:flutter/material.dart';


class MainBloc with
    ChangeNotifier{
  String _placeResults;

  String get placeResults {
    return _placeResults;
  }

  set placeResults(token) {
    _placeResults = token;
  }

}