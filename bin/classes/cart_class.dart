import 'product_class.dart';

class Cart {
  // Initialize an empty list of products
  List<Product> products = [];

  // Method to add a product to the cart
  List<Product>? addItem(Product p) {
    products.add(p); // Add the product to the list
    return products; // Return the updated list of products
  }

  // Method to remove a product from the cart by its name
  void removeItem(String productName) {
    products.removeWhere((p) => p.productName == productName);
    // Removes any product with a matching name
  }

  // Method to print the contents of the cart
  void printCart() {
    if (products.isEmpty) {
      print("The cart is empty."); // Print message if the cart is empty
    } else {
      print("Cart items:");
      for (var p in products) {
        print("Product: ${p.productName}, Price: \$${p.productPrice}");
        // Print product details for each item in the cart
      }
    }
  }

  // Method to calculate the total price of all products in the cart
  double totalPrice() {
    double total = 0;

    // Loop through the list of products and sum their prices
    for (var p in products) {
      total += p.productPrice!;
    }

    return total; // Return the calculated total price
  }
}
