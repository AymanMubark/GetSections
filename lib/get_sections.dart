import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:flutter_orders/header.dart';
import 'package:flutter_orders/GetSectionModel.dart';

import 'package:http/http.dart' as http;

class GetSectionsProvider extends ChangeNotifier {
  GetSectionModel data;

  Future getSectionsApi() async {
    Header header = new Header();
    var mheader = header.getHeader();
    try {
      String url = "https://admin.rtosh.co/api/client/v1/getSections";
      var _response = await http.post(url, headers: mheader);
      data = GetSectionModel.fromJson(jsonDecode(_response.body));
    } catch (error) {}
  }
}
