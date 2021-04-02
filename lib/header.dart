

class Header {
//  String Content_Type = "application/json";
//  String API_KEY = "c5f7f86b-669d-4585-b410-d545f11010ee";
//  var header =
//  {'Content-Type': 'application/json' ,'Consumer' : '254321889' };
  //  'API-KEY':  'c5f7f86b-669d-4585-b410-d545f11010ee'
  Map<String,String> headers = {'Content-Type':'application/json' };
   getHeader() {
    //var jsonHeader = jsonEncode(header);
   // return jsonHeader;
     print("this is header get doctor ");
     print(headers);
    return headers;
  }

}
