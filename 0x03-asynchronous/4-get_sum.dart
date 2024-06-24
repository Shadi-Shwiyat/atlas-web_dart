import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    // print(userMap['id']);

    String userOrderString = await fetchUserOrders(userMap['id']);
    List<dynamic> userOrders = jsonDecode(userOrderString);
    // print(userOrders);


    num totalPrice = 0;
    for (String product in userOrders) {
      // print(product);
      String productPrice = await fetchProductPrice(product);
      // print(productPrice);
      num price = jsonDecode(productPrice);
      // print(price);
      totalPrice += price;
      // print(totalPrice);
    }

    return totalPrice;
  } catch (error) {
    return -1;
  }

}