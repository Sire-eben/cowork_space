// import 'package:all_routes_rider/core/network/endpoints.dart';
// import 'package:all_routes_rider/core/network/network_client.dart';
// import 'package:all_routes_rider/core/shared_notifier/base_change_notifier.dart';
// import 'package:all_routes_rider/core/shared_services/local/implementations/local_cache_impl.dart';
// import 'package:all_routes_rider/core/shared_services/local/implementations/secure_storage_impl.dart';
// import 'package:all_routes_rider/core/shared_services/local/services/local_cache.dart';
// import 'package:all_routes_rider/core/shared_services/local/services/secure_storage.dart';
// import 'package:all_routes_rider/modules/authentication/notifier/authentication_notifier.dart';
// import 'package:all_routes_rider/modules/authentication/services/auth_service.dart';
// import 'package:all_routes_rider/modules/authentication/services/auth_service_impl.dart';
// import 'package:all_routes_rider/modules/messages/services/socket_service.dart';
// import 'package:all_routes_rider/modules/orders/notifier/order_notifier.dart';
// import 'package:all_routes_rider/modules/orders/services/order_service.dart';
// import 'package:all_routes_rider/modules/orders/services/order_service_impl.dart';
// import 'package:all_routes_rider/modules/orders/notifier/order_socket_service.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;

// final locator = GetIt.instance;

// final navigatorKey = GlobalKey<NavigatorState>();

// Future<void> refreshSocket() async {
//   try {
//     final cache = locator<LocalCache>();
//     final token = await cache.getToken();

//     final newSocket = IO.io(
//       Endpoints.baseUrl,
//       IO.OptionBuilder()
//           .setTransports(['websocket'])
//           .disableAutoConnect()
//           .setExtraHeaders({'Authorization': 'Bearer $token'})
//           .build(),
//     );

//     // Replace old socket
//     if (locator.isRegistered<IO.Socket>()) {
//       locator<IO.Socket>().dispose();
//       locator.unregister<IO.Socket>();
//     }
//     locator.registerSingleton<IO.Socket>(newSocket);

//     // Re-register dependent services
//     if (locator.isRegistered<SocketService>()) {
//       locator.unregister<SocketService>();
//     }
//     locator.registerLazySingleton<SocketService>(() => SocketService(socket: newSocket));

//     debugPrint("🔄 Socket refreshed & services updated.");
//   } catch (e) {
//     debugPrint("❌ Socket refresh failed: $e");
//   }
// }



// Future<void> setupLocator() async {
//   final sharedPreferences = await SharedPreferences.getInstance();
//   final dio = Dio(BaseOptions(
//     baseUrl: Endpoints.baseUrl,
//     connectTimeout: const Duration(minutes: 5),
//     receiveTimeout: const Duration(minutes: 3),
//   ));

//   final cache = LocalCacheImpl(
//     sharedPreferences: sharedPreferences,
//     storage: SecureStorageImpl(),
//   );

//   final token = await cache.getToken();

//   final socket = IO.io(
//     Endpoints.baseUrl,
//     IO.OptionBuilder()
//         .setTransports(['websocket'])
//         .disableAutoConnect()
//         .setExtraHeaders({
//           'Authorization': 'Bearer $token',
//         })
//         .build(),
//   );

//   // Register shared preferences and Dio
//   locator.registerSingleton<SharedPreferences>(sharedPreferences);
//   locator.registerSingleton<IO.Socket>(socket);
//   locator.registerSingleton<Dio>(dio);
//   locator.registerLazySingleton<SecureStorage>(
//     () => SecureStorageImpl(),
//   );

//   locator.registerLazySingleton<LocalCache>(
//     () => LocalCacheImpl(
//       sharedPreferences: locator(),
//       storage: locator(),
//     ),
//   );
 


//   // Register NetworkClient using dio and shared preferences
//   final networkClient = NetworkClient(
//     cache: locator(),
//     dio: dio,
//     // onLogout: handleLogout,
//   );
//   locator.registerSingleton<NetworkClient>(networkClient);

//   // // Register services
//   locator.registerLazySingleton<AuthService>(() => AuthServiceImpl(
//         networkClient: networkClient,
//       ));

//   locator.registerLazySingleton<OrderService>(() => OrderServiceImpl(
//         networkClient: networkClient,
//       ));

//   locator.registerLazySingleton<SocketService>(() => SocketService(
//         socket: locator(),
//       ));

//   locator.registerLazySingleton<OrderSocketService>(() => OrderSocketService(
//         socket: locator(),
//       ));

//   ///register controllers
//   locator.registerLazySingleton<BaseChangeNotifier>(() => BaseChangeNotifier(
//         authService: locator(),
//         orderService: locator(),
//       ));
//   locator.registerLazySingleton<AuthenticationNotifier>(() => AuthenticationNotifier());
//   locator.registerLazySingleton<OrderNotifier>(() => OrderNotifier());
// }
