import 'package:flutter/material.dart';

Class ProductTile  extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(padding:  const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(height: 8),
            Text(
              product.name,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
               SizedBox(height: 8),
               if (product.rating != null)
                Container(
                 decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(12)
               ),
               padding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
               child: Row(
                 mainAxisSize:MainAxisSize.mi
                 
               ),
               ),


            Container(
              height: 180,
              width: double.infinity ,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4)
              ),
              child:Image.asset(
                    "assets/images/p4.png",
                    fit: BoxFit.cover,
                  ),
            )
          ],)
        ]
      ),
      ),
      
    );
  }
}