
import 'dart:convert';

import 'package:hellow_friend/Utlis/Network.dart';
import 'package:http/http.dart 'as http;

import '../Model/modeltask.dart';

class ProductController{
  List<Data> Products= [];

  Future<void>fetchProducts()async{
    final response = await http.get(Uri.parse(Url.readProduct));
  print(response.statusCode);

  if(response.statusCode == 200){
    final data = jsonDecode(response.body);
    ProductModel product = ProductModel.fromJson(data);
    Products = product.data ?? [];
  }

  }


  Future<void>createProduct(String name,String img,int qty,int price,int totalprice)async{
    final response = await http.post(Uri.parse(Url. CreateProduct),
    headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          "ProductName": name,
          "ProductCode":DateTime.now().microsecondsSinceEpoch,
          "Img": img,
          "Qty": qty,
          "UnitPrice": price,
          "TotalPrice": totalprice
        })

    );

    if(response.statusCode == 201){
    fetchProducts();
    }

  }

  Future<void>UpdateProduct(String id,String name,String img,int qty,int price,int totalprice)async{
    final response = await http.post(Uri.parse(Url. UpdateProduct(id)),
        headers: {"Content-Type":"application/json"},
        body: jsonEncode({
          "ProductName": name,
          "ProductCode":DateTime.now().microsecondsSinceEpoch,
          "Img": img,
          "Qty": qty,
          "UnitPrice": price,
          "TotalPrice": totalprice
        })

    );

    if(response.statusCode == 201){
      fetchProducts();
    }

  }

  Future<bool> deleteProducts(String id)async{
    final response = await http.post(Uri.parse(Url.deleteProduct(id)),);

    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }

  }

}