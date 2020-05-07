import 'dart:convert';
import 'package:http/http.dart';
import './../_jsonModels/onAir.dart';
import './../_jsonModels/index.dart';

class HttpService {
  //GET onAir.json
  static Future<OnAir> getOnAir() async {
    final String url = "https://www.raiplay.it/palinsesto/onAir.json";
    try {
      Response res = await get(
        url,
        headers: {"Accept": "application/json"},
      );
      String body = res.body;
      if (res.statusCode == 200 && res.body.length > 1) {
        final dynamic parsed = json.decode(body);
        final OnAir data = OnAir.fromJson(parsed);
        print(data);
        return data;
      } else return OnAir();
    } catch (e) {
      return e;
    }
  }
  //GET index.json
  static Future<IndexPage> getIndex() async {
    final String url = "https://www.raiplay.it/index.json";
    try {
      Response res = await get(
        url,
        headers: {"Accept": "application/json"},
      );
      String body = res.body;
      if (res.statusCode == 200) {
        final dynamic parsed = json.decode(body);
        final IndexPage data = IndexPage.fromJson(parsed);
        return data;
      } //else return IndexPage();
    } catch (e) {
      return e;
    }
  }
}