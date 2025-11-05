// import 'package:breej_hub_mobile/modules/authentication/services/auth_service.dart';
// import 'package:breej_hub_mobile/modules/orders/services/order_service.dart';
// import 'package:flutter/material.dart';
// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
// // import 'package:package_info_plus/package_info_plus.dart';
// import 'package:breej_hub_mobile/locator.dart';

// class BaseChangeNotifier extends ChangeNotifier {
//   late AuthService authService;
//   late OrderService orderService;
//   // late HomeService homeService;

//   BaseChangeNotifier({
//     AuthService? authService,
//     OrderService? orderService,
//     // HomeService? homeService,
//   }) {
//     this.authService = authService ?? locator();
//     this.orderService = orderService ?? locator();
//     // this.homeService = homeService ?? locator();
//   }

//   bool _isloading = false;
//   bool get isLoading => _isloading;

//   set setLoading(bool isloading) {
//     _isloading = isloading;
//     notifyListeners();
//   }

//   String _message = '';
//   String get message => _message;

//   set setMessage(String message) {
//     _message = message;
//     notifyListeners();
//   }

//   void handleError({String? message}) {
//     setLoading = false;
//     setMessage = message ?? 'Failed';
//     notifyListeners();
//   }

//   void handleSuccess(String? message) {
//     setLoading = false;
//     setMessage = message ?? 'Successful';
//     notifyListeners();
//   }

//   // Future<String> get appVersionNumber async {
//   //   Map<String, dynamic> appVersionDetails = await getVersionNumber();
//   //   return appVersionDetails['version'] ?? '';
//   // }

//   // Future<String> get appVersion async {
//   //   // String baseURL = await this.userRepository.getBaseURl();

//   //   Map<String, dynamic> appVersionDetails = await getVersionNumber();

//   //   String versionNumber = '';

//   //   String releaseVersion = 'RELEASE';

//   //   if (releaseVersion.toUpperCase() == 'STAGING') {
//   //     versionNumber = 'V' + appVersionDetails['version'];
//   //     //  +
//   //     // " T." +
//   //     // appVersionDetails["buildNumber"];
//   //   } else {
//   //     versionNumber = 'V' + appVersionDetails['version'];
//   //     //  +
//   //     // " b." +
//   //     // appVersionDetails["buildNumber"];
//   //   }

//   //   return versionNumber;
//   // }

//   // Future<Map<String, dynamic>> getVersionNumber() async {
//   //   PackageInfo packageInfo = await PackageInfo.fromPlatform();

//   //   String appName = packageInfo.appName;
//   //   String packageName = packageInfo.packageName;
//   //   String version = packageInfo.version;
//   //   String buildNumber = packageInfo.buildNumber;

//   //   return {
//   //     'appName': appName,
//   //     'packageName': packageName,
//   //     'version': version,
//   //     'buildNumber': buildNumber,
//   //   };
//   // }

//   Future<bool> checkInternet() async => await InternetConnection().hasInternetAccess;
// }
