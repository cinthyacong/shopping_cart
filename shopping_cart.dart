import 'cart_logic.dart';

List cart = [];
int freeShippingPrice = 500;

void main() {
  List _products = [
    {
      "id": 1001,
      "name": "Apple",
      "price": 200,
      "qty": 1,
    },
    {
      "id": 1002,
      "name": "Orange",
      "price": 230,
      "qty": 1,
    },
    {
      "id": 1003,
      "name": "banana",
      "price": 50,
      "qty": 1,
    },
    {
      "id": 1004,
      "name": "pine apple",
      "price": 180,
      "qty": 1,
    },
    {
      "id": 1005,
      "name": "mango",
      "price": 250,
      "qty": 1,
    },
    {
      "id": 1006,
      "name": "jack fruit",
      "price": 400,
      "qty": 1,
    }
  ];
  CartLogic cartInstance = CartLogic();
  cartInstance.addToCart(_products[3]);
  cartInstance.addToCart(_products[3]);
  cartInstance.addToCart(_products[2]);
  cartInstance.isFreeShippingEligible();
  cartInstance.getTotalQty();
  cartInstance.addToCart(_products[5]);
  cartInstance.removeFromCart(_products[3]);
  cartInstance.getTotalPrice();
  cartInstance.addToCart(_products[5]);
  cartInstance.isFreeShippingEligible();
}

// addToCart(product) {}

// removeFromCart(product) {}

// getTotalQty() {}


// getTotalPrice() {}

// isFreeShippingEligible() {}
