import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '__utils.dart';

class Utils {
  static String getTimestamp() => DateTime.now().toIso8601String();

  static String formatIsoToLocalDateTime(String isoDateStr) {
    final utcDateTime = DateTime.parse(isoDateStr);
    final localDateTime = utcDateTime.toLocal();
    return DateFormat('d MMMM y, h:mm a').format(localDateTime); // e.g., "21 July 2025, 2:30 PM"
  }

  static String formatIsoToLocalTime(String isoDateStr) {
    final utcDateTime = DateTime.parse(isoDateStr);
    final localDateTime = utcDateTime.toLocal();
    return DateFormat('h:mm a').format(localDateTime); // e.g., "2:30 PM"
  }

  static String formatIsoToReadableLocal(String isoDateStr) {
    final utcDateTime = DateTime.parse(isoDateStr);
    final localDateTime = utcDateTime.toLocal();
    return DateFormat('d MMMM y').format(localDateTime);
  }

  String formatDate(String date) {
    if (date.isEmpty) return "";
    DateTime parsedDate = DateTime.parse(date);
    String daySuffix = _getDaySuffix(parsedDate.day);
    String formattedDate = DateFormat('d\'$daySuffix\' MMM. yyyy').format(parsedDate);
    return formattedDate;
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  static String formatAmount(String? amount, {bool withSign = true}) {
    if (amount == null) {
      return amount.toString();
    } else {
      double value = double.parse(amount.replaceAll("N", ""));
      final formatter = NumberFormat("#,##0", "en_US");
      String formattedAmount = formatter.format(value);
      return withSign ? "${AppStrings.naira}$formattedAmount" : formattedAmount;
    }
  }

  static String formatTimeAgo(String dateTimeStr) {
    final dateTime = DateTime.parse(dateTimeStr);

    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 5) {
      return 'just now';
    } else if (difference.inMinutes < 1) {
      return 'a moment ago';
    } else if (difference.inHours < 1) {
      final minutes = difference.inMinutes;
      return '$minutes min${minutes == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 1) {
      final hours = difference.inHours;
      return '$hours hr${hours == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 7) {
      final days = difference.inDays;
      return '$days day${days == 1 ? '' : 's'} ago';
    } else {
      final days = difference.inDays;
      return '$days day${days == 1 ? '' : 's'} ago';
      // return DateFormat('yyyy-MM-dd').format(dateTime);
    }
  }
}

// Helper function to safely parse a value to double
double parseDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

// Helper function to safely parse a value to double
int parseInt(dynamic value) {
  if (value == null) return 0;
  if (value is double) return value.toInt();
  if (value is int) return value;
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

// Helper function to safely parse a value to String
String parseString(dynamic value) {
  if (value == null) return "";
  if (value is String) return value;
  if (value is int || value is double) return value.toString().capitalize;
  return "";
}

bool parseBool(dynamic value) {
  if (value == null) return false;
  if (value is bool) return value;
  return false;
}

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 800;
