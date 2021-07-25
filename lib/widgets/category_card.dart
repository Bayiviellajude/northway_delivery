import 'package:flutter/material.dart';
import 'package:northway_delivery/widgets/product_card.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.indigo[900]),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:  Text(
                  "FOOD",
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                      
                ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
                height: 620,
                width: 400,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2 / 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 100,
                    itemBuilder: (BuildContext ctx, index) {
                      return ProductCard();
                    }),
              ),
        ],
      ),
    );
  }
}
