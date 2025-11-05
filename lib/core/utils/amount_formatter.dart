import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AmountFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final double value =
        double.tryParse(newValue.text.replaceAll(',', '')) ?? 0.0;
    final String formattedText = NumberFormat('#,###.##').format(value);

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(
        offset: formattedText.length,
      ),
    );
  }
}
