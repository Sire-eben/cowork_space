import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoints {
  static String baseUrl =
      !kDebugMode ? dotenv.get('BASE_URL_TEST') : dotenv.get('BASE_URL_PROD');
 
  static const register = 'auth/register/rider';
  static const verifyEmail = 'rider/email/verify';
  static const verifyPhone = 'rider/phone/verify';
  static const captureFace = 'rider/picture/upload';
  static const login = 'auth/login';
  static const getProfile = 'rider/profile';
  static const getLimitedProfile = 'rider/profile/limited';
  static const fetchAllOrders = 'order';
  static const fetchOrdersByLocation = 'rider/nearby-rides';
  static String fetchOrdersWithProgress(int progress) => 'order?progress=$progress';
  static String acceptOrder(String orderId) => 'order/$orderId/accept';
  static String pickupOrder(String orderId) => 'order/$orderId/pickup';
  static String markAsDelivered(String orderId) => 'order/$orderId/mark-deliver';
  // static String deliverOrderCashDelivery(String orderId) => 'order/$orderId/confirm-deliver';
  static String confirmDelivery(String orderId) => 'order/$orderId/confirm-deliver';
  static const riderPreferences = 'rider/rides';
  static const riderType = 'rider/type';
  static const initiatePayment = 'rider/payment/initialize';
  static const verifyPayment = 'rider/pay-debt';
  static const transactionHistory = 'rider/trx/recent';
  static const deleteAccount = 'rider/account';
}
