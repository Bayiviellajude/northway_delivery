import 'dart:async';
import 'dart:convert';


import 'package:http/http.dart' as http;

Future <Product> fetchProduct() async {
  final response =
      await http.get(Uri.parse('http://192.168.1.1:3000/product'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Product');
  }
}

class Product {
final String descr;
  final int id;
  final String name;
  final String category;
  final int price;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.id,
    required this.descr

  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['product_name'] as String,
      id: json['id'] as int,
      category: json['categories'] as String,
      price: json['product_price'] as int,
      descr: json['product_description']  as String
    );
  }
}
