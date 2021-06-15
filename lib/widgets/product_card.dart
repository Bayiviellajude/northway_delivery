import 'package:flutter/material.dart';
import 'package:northway_delivery/services/product_services.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({ Key? key }) : super(key: key);

    

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

//   FutureBuilder<Product>(
//   future: futureProduct,
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       return Text(snapshot.data!.name);
//     } else if (snapshot.hasError) {
//       return Text("${snapshot.error}");
//     }

//     // By default, show a loading spinner.
//     return CircularProgressIndicator();
//   },
// )

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          Padding: EdgeInsects.all(10.0),
          color: Colors.amber,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FRIED FICE",style: TextStyle(fontSize: 25),),
              Text("-SPICY",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        
      ),
    );
  }
}