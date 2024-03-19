import 'package:http/http.dart' as http;
import 'package:news_app_2/core/config/constants.dart';
import 'package:news_app_2/models/category_model.dart';

class ApiManager {
  static fetchDataSources(String categoryId) async  {
    var url = Uri.https(Constants.baseUrl, "/v2/top-headlines/sources", {
      "apiKey": Constants.apiKey,
      "category": categoryId,
    });
   final response = await http.get(url);
   if(response.statusCode == 200){
     print(response.body);
   }
  }
}
