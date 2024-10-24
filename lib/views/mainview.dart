import 'package:flutter/material.dart';
import 'package:onboarding/models/product_model.dart';
import 'package:get/get.dart';
import 'package:onboarding/views/product_view/screen/product_view.dart'; // Don't forget to import GetX

class MainView extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Creamskin", price: 19.99, imageUrl: "assets/photo1.jpg"),
    Product(name: "foundation ", price: 29.99, imageUrl: "assets/photo2.jpg"),
    Product(name: "liblinear", price: 39.99, imageUrl: "assets/photo3.jpg"),
    Product(name: "Creamskin", price: 19.99, imageUrl: "assets/photo1.jpg"),
    Product(name: "foundation ", price: 29.99, imageUrl: "assets/photo2.jpg"),
    Product(name: "liblinear", price: 39.99, imageUrl: "assets/photo3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-commerce')),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(ProductView(product: products[index])); // Navigate to the product view
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(products[index].imageUrl, height: 100),
                  Text(products[index].name),
                  Text("\$${products[index].price}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
