
import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:flutter_orders/header.dart';
import 'package:flutter_orders/sections_model.dart';

import 'package:http/http.dart' as http;


class GetSectionsProvider extends ChangeNotifier {

  SectionsModel data ;
 // List<Section> _sections = [] ;
 // List<Sections> sections = [];
  Providers providers ;



  List<Sections> _item = [];

  List<Sections> get items {
    return [..._item];
  }




//
//  List<FreqQuestionModel> get items {
//    return [..._item];
//  }

  Future<void> getSectionsApi ( ) async {
  //  _item.clear ();
   // print ("i am in getFreqQuestionProviderApi");
    Header header = new Header();
    var mheader = header.getHeader ();
    try {
      String url = "https://admin.rtosh.co/api/client/v1/getSections";
      var _response = await http.post (url , headers: mheader);


      print("_response.statusCode");
      print(_response.statusCode);

      if (_response.statusCode == 200) {
        var body = jsonDecode (_response.body);
        print("My body");
        print(body);
        bool success = body['success'];
        print(success);
        var sectionsBig = body['sections'];
        print(sectionsBig);
        var sectionsObject = sectionsBig[0]['section'];
        print(sectionsObject);
        var providresArray = sectionsBig[0]['providers'];


        if (success == true) {
        print(" i am in trtu w");

        Sections ch;

        providresArray.forEach (( e  ) {
          ch = Sections.fromJson(sectionsObject);
          _item.add(ch);
          print("eeee");
          print(e['providers']);
          this.providers = Providers.fromJson(e);
        });
        this.notifyListeners ();
        //  this.notifyListeners ();
          print("this after data");
          print("sectionsObject.length");
          print(sectionsObject.length);
        print("providresArray.length");
          print(providresArray.length);


          print("NEW DATA");
          print(_item.length);
          print(sectionsObject);
          print(providresArray);
        }
      }
//      final _responseData = json.decode(_response.body);
//
//      if (_responseData["success"] != true) {
//        throw HttpException("No Freq Question");
//      }
    } catch (error) {
      print ("it error");
      print (error);
      throw error;
    }
  }
}