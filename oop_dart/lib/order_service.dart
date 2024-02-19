import 'package:oop_dart/Order.dart';

abstract class OrderService {
  // 주문 생성
  Order createOrder(num numberId, String itemName, int itemPrice);
}
