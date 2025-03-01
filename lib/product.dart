import 'package:flutter/material.dart';
import 'package:hellow_friend/Utlis/ProductControllers.dart';
import 'package:hellow_friend/Widget/ProductCard.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  final ProductController productController = ProductController();

  void productDialog({String ? id, String ? name,String ?img,int? qty,int ?unit,int ?total,}) {
    TextEditingController nameController = TextEditingController();
    TextEditingController codeController = TextEditingController();
    TextEditingController imageController = TextEditingController();
    TextEditingController qtyController = TextEditingController();
    TextEditingController unitController = TextEditingController();
    TextEditingController totalController = TextEditingController();

    nameController.text = name ?? "";
    imageController.text = img ?? "" ;
    qtyController.text = qty != null ? qty.toString(): "0";
    unitController.text = unit!= null ? unit.toString() : "0";
    totalController.text = total!= null ? total.toString() : "0";



    showDialog(context: context,
        builder: (context) =>
            AlertDialog(
              title: Text(id == null ?"Add Product" : "Update product"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      controller: nameController,
                      decoration: InputDecoration(labelText: "Product name")
                  ),
                  TextField(
                    controller: imageController,
                    decoration: InputDecoration(labelText: "Image"),
                  ),
                  TextField(
                    controller: qtyController,
                    decoration: InputDecoration(labelText: "Qty"),
                  ),
                  TextField(
                      controller: unitController,
                      decoration: InputDecoration(labelText: "Unit price")
                  ),
                  TextField(
                      controller: totalController,
                      decoration: InputDecoration(labelText: "total price")
                  ), SizedBox(height: 10,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("Cancel")),
                      ElevatedButton(onPressed: () {

                          if(id == null){productController.createProduct(nameController.text, imageController.text, int.parse(qtyController.text), int.parse(unitController.text), int.parse(totalController.text));
                          }else {
                            productController.UpdateProduct(id, nameController
                                .text, imageController.text, int.parse(
                                qtyController.text), int.parse(
                                unitController.text), int.parse(
                                totalController.text));
                          }
                            fetchData();
                            Navigator.pop(context);
                          setState(() {
                          });
                      },

                          child:Text(id == null ?"Add Product" : "Update product")),

                    ],
                  )

                ],
              ),
            ));
  }

  Future<void> fetchData() async {
    await productController.fetchProducts();
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: Text("Product", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.05
        ),
          itemCount: productController.Products.length,
          itemBuilder: (context, index) {
            final product = productController.Products[index];
            return ProductCard(product: product, onEdit:()=>productDialog(), onDelete:()=> productController.deleteProducts(product.sId.toString()));
          }
          ),
      floatingActionButton: FloatingActionButton(onPressed: () =>
        productDialog(),

        child: Icon(Icons.add),),
    );
  }

}
