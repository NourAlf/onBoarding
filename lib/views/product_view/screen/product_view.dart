import 'package:flutter/material.dart';

import '../../../models/product_model.dart';


class ProductView extends StatelessWidget {
  final Product product;

  ProductView({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),

      body: Center(
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
                height: 200,
                child: Image.asset(product.imageUrl, height: 300)),
            SizedBox(height: 20),
            Text(
              product.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "\$${product.price}",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // إضافة إلى السلة
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
