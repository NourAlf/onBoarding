// product_controller.dart
import 'package:get/get.dart';

import '../../../models/product_model.dart';



class ProductController extends GetxController {
  var products = <Product>[
    Product(name: 'cream skin', price: 100, imageUrl: 'assets/photo1.jpg'),
    Product(name: 'fundition', price: 200, imageUrl: 'assets/photo2.jpg'),
    Product(name: 'mascara', price: 300, imageUrl: 'assets/photo3.jpg'),
  ].obs;

  var cart = <Product>[].obs;
  var favorites = <Product>[].obs;

  // Add or remove a product from favorites
  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    if (product.isFavorite) {
      favorites.add(product);
    } else {
      favorites.remove(product);
    }
    products.refresh(); // Refresh to update UI
  }

  // Add a product to the cart
  void addToCart(Product product) {
    cart.add(product);
  }
}
