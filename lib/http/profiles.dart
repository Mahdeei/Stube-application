import 'dart:convert';

import 'package:http/http.dart' as http;
import 'file:///D:/proflutter/stubbbb/lib/Other/profileModels.dart';

class ProfileHttp {
  static Future<Map> getData() async {
    List<Models> profiles = [];
    var response = await http.get('http://192.168.56.1/Stub/userGetData.php');

    var responseBody = json.decode(response.body);
    responseBody.forEach((item) {
      profiles.add(Models.fromjson(item));
    });
    return {
      'profiles' : profiles
      };
  }
}
