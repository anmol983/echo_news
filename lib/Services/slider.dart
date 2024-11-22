import 'dart:convert';
import 'package:news_app_/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_/models/silder_model.dart';

class Sliders {
  List<sliderModel> sliders = [];

  Future<void> getSlider() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=30986c051d78497e8eda0234e49a1599";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          sliderModel slidermodel = sliderModel(
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
            Author: element["author"],
          );
          sliders.add(slidermodel);
        }
      });
    }
  }
}
