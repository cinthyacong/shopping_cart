import 'shopping_cart.dart';

class CartLogic {
  var cart = [];

  addToCart(product) {
    cart.add(product); // Add products in your cart
    print("Product ${product['name']} successfuly added to your shopping cart");
  }

  getTotalQty() {
    num totalQty = 0;
    int q = cart.length;

    for (int i = 0; i < q; i++) {
      totalQty += cart[i]['qty'];
    }
    print("You have $totalQty items in your Cart");
    return totalQty;
  }

  isFreeShippingEligible() {
    int freeShippingPrice = 500;
    num total = 0;
    num almost = 0;
    int q = cart.length;
    for (int i = 0; i < q; i++) {
      total += cart[i]['price'];
      almost = freeShippingPrice - total;
    }
    if (total >= freeShippingPrice) {
      print("Total is \$$total, you have a Free Shipping!");
    } else {
      print("You have \$$total, you need \$$almost to Free Shipping");
    }
    return total;
  }

  removeFromCart(product) {
    var index = cart.indexWhere((p) => p['id'] == product['id']);
    if (index != -1) {
      cart.removeAt(index);
      print("You remove ${product['name']}");
    } else {
      print("Product not found");
    }
  }

  getTotalPrice() {
    num totalPrice = 0;
    int q = cart.length;
    for (int i = 0; i < q; i++) {
      totalPrice += cart[i]['price'];
    }
    print("Total Price is \$$totalPrice");
    return totalPrice;
  }
}
