import 'package:flutter/material.dart';

import '../Model/modeltask.dart';
import '../product.dart';

class ProductCard extends StatelessWidget {
  final Data product ;
  final VoidCallback onEdit;
  final VoidCallback onDelete;


  const ProductCard({super.key, required this.product, required this.onEdit, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRect(
            child: Container(
              height: 150,
              color: Colors.grey,
              child: Image.network(product.img.toString(),fit: BoxFit.cover,),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.productName.toString(),style:
              TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
              ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              Text("Price:${product.unitPrice} | qty:${product.qty}",style:
              TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black54
              ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.edit)),
                    IconButton(onPressed: (){}, icon:Icon(Icons.delete,color: Colors.red,))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
