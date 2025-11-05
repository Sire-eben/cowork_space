import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/pages/booking/booking_desktop.dart';
import 'package:breej_hub_mobile/pages/booking/booking_mobile.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, x) {
          return isMobile(context) ? BookingMobile() : BookingDesktop();
        },
      ),
    );
  }
}
