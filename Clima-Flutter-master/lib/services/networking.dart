import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({this.url});

  Future getData() async {
    Response response = await get(url).timeout(Duration(seconds: 5), onTimeout: () {
      dynamic connectionIssues = "There is no connection with the server, check location settings";
      return connectionIssues;
    });
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      print(response);
    }
  }
}
