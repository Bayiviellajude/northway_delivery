import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  // ignore: deprecated_member_use
  var productList = <Product>[].obs;
  void fetchProduts() async {
    Var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products;


    }
    
  }
  }
  
  class Product {
}
