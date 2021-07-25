import 'package:flutter/material.dart';
import 'package:northway_delivery/services/product_services.dart';
import 'package:northway_delivery/widgets/cart_info.dart';
import 'package:northway_delivery/widgets/product_info.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late Future<Product> futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductInfoPage()),
        );
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.white,
        color: Colors.white,

        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/pd1.jpg",
                height: 70,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 7,
              ), //SizedBox

              Text(
                "FRIED RICE",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ), //Textstyle
              ), //Text
              Text(
                "PRICE GHC 20.00",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ), //Textstyle
              ), //Text

              Text(
                "SPICY",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ), //Textstyle
              ), // //SizedBox

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartInfoPage()),
                      );
                    },
                    icon: Icon(Icons.shopping_cart, color: Colors.yellow[800]),
                  )

                ],
              )
            ],
          ),
        ), //Column

        //SizedBox
      ),
    );
  }
}
