import 'package:http/http.dart' as http;
import 'package:northway_delivery/controllers/productcontroler.dart';
import 'package:northway_delivery/model/product.dart';  

class Remoteservices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(
      " https://makeup-api.herokuapp.com/api/v1/products.json"
    );
    if (response.statusCode ==200){
      var jsonString = response.body;
      welcomeFromJson(jsonString);

    }else {
      return null;
    }
  }
  
}




// https://makeup-api.herokuapp.com/api/v1/products.json