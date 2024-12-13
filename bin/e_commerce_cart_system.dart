// Importing custom classes for Cart, Product, and User
import 'classes/cart_class.dart';
import 'classes/product_class.dart';
import 'classes/user_class.dart';

void main(List<String> arguments) {
  // Create a new cart
  var cart = Cart();

  // Create users
  User john = User('John Doe', cart);
  User ghada = User('Ghada', cart);

  // Create products
  Product phone = Product('Smartphone', 499.99);
  Product earphones = Product('Earphones', 29.99);
  Product headphones = Product("Headphones", 100.0);
  Product laptop = Product("Laptop", 1500.0);

  // Add products to John's cart
  john.cart.addItem(phone);
  john.cart.addItem(earphones);

  // Print John's user information and cart details
  john.printUserInfo();

  // Print the total price of products in John's cart
  print("The total price of products: \$${cart.totalPrice()}");

  print('////////////////////////////////////////////////////////////');

  // Add products to Ghada's cart
  ghada.cart.addItem(headphones);
  ghada.cart.addItem(laptop);

  // Print Ghada's user information and cart details
  ghada.printUserInfo();

  // Print the total price of products in Ghada's cart
  print("The total price is: \$${cart.totalPrice()}");
}
