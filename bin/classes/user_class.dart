import 'cart_class.dart';

class User {
  String userName;
  Cart cart;

  User(this.userName, this.cart);

  void printUserInfo() {
    print("User: $userName");
    cart.printCart();
  }
}
