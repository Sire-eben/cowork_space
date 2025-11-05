// import 'package:blueroomcare_therapist/core/utils/__utils.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class UrlViewer extends StatefulWidget {
//   const UrlViewer({
//     required this.url,
//     super.key,
//   });

//   final Uri url;

//   @override
//   State<UrlViewer> createState() => _UrlViewerState();
// }

// class _UrlViewerState extends State<UrlViewer> {
//   final _key = UniqueKey();
//   bool _isLoading = true;
//   double opacity = 0;

//   late final WebViewController _webViewController;

//   @override
//   void initState() {
//     _webViewController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..enableZoom(false)
//       ..setBackgroundColor(const Color(0xFFFFFFFF))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             if (mounted) {
//               setState(() => opacity = progress / 100);
//             }
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {
//             if (mounted) {
//               setState(() => _isLoading = false);
//             }
//           },
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(widget.url);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: context.colorScheme.onPrimary,
//       body: SizedBox(
//         height: MediaQuery.sizeOf(context).height,
//         child: Stack(
//           children: [
//             Opacity(
//               opacity: opacity,
//               child: WebViewWidget(
//                 key: _key,
//                 controller: _webViewController,
//                 gestureRecognizers: const {
//                   Factory<OneSequenceGestureRecognizer>(
//                     EagerGestureRecognizer.new,
//                   ),
//                 },
//               ),
//             ),
//             Visibility(
//               visible: _isLoading,
//               child: const Center(
//                 child: CircularProgressIndicator(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
