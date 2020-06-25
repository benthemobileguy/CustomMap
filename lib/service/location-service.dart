import 'package:flutter_custom_map/model/place-detail.dart';
import 'package:flutter_custom_map/utils/utils-links.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class LocationService {
  static final _locationService = new LocationService();

  static LocationService get() {
    return _locationService;
  }



  Future<List<PlaceDetail>> getNearbyPlaces() async {
    var reponse = await http.get(UtilsLinks.url,
        headers: {"Accept": "application/json"});

    List data = json.decode(reponse.body)["results"];
    print(json.decode(reponse.body));
    var places = <PlaceDetail>[];
    data.forEach((f) => places.add(new PlaceDetail(f["place_id"], f["name"],
        f["icon"], f["rating"].toString(), f["vicinity"])));

    return places;
  }

  Future getPlace(String place_id) async {
    var response = await http
        .get(UtilsLinks.detailUrl + place_id, headers: {"Accept": "application/json"});
    var result = json.decode(response.body)["result"];


    List<String> weekdays = [];
    if (result["opening_hours"] != null)
      weekdays = result["opening_hours"]["weekday_text"];
    return new PlaceDetail(
        result["place_id"],
        result["name"],
        result["icon"],
        result["rating"].toString(),
        result["vicinity"],
        result["formatted_address"],
        result["international_phone_number"],
        weekdays);
  }

}