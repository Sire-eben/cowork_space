import 'package:flutter/material.dart';
import 'package:breej_hub_mobile/core/utils/__utils.dart';

class UrbanovaPopMenu extends StatefulWidget {
  final SvgGenImage icon;
  final List<String> rideOptions;
  final String? initialSelectedOption;
  final Function(String) onOptionSelected;

  const UrbanovaPopMenu({
    super.key,
    required this.rideOptions,
    this.initialSelectedOption,
    required this.onOptionSelected,
    required this.icon,
  });

  @override
  State<UrbanovaPopMenu> createState() => _UrbanovaPopMenuState();
}

class _UrbanovaPopMenuState extends State<UrbanovaPopMenu> {
  late String? _selectedRideOption;

  ionitializeData() => setState(() => _selectedRideOption = widget.initialSelectedOption);

  @override
  void initState() {
    super.initState();
    ionitializeData();
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: AppColors.primary),
      ),
      borderRadius: BorderRadius.circular(8),
      itemBuilder: (context) {
        return List.generate(
          widget.rideOptions.length,
          (index) => PopupMenuItem<int>(
            value: index,
            textStyle: AppStyles.raleway12Rg.copyWith(color: AppColors.black2, letterSpacing: -0.5),
            child: Text(
              widget.rideOptions[index],
              style: AppStyles.raleway12Rg.copyWith(color: AppColors.black2),
            ),
          ),
        );
      },
      onSelected: (value) {
        setState(() {
          _selectedRideOption = widget.rideOptions[value];
        });
        widget.onOptionSelected(widget.rideOptions[value]);
      },
      surfaceTintColor: Colors.white,
      color: Colors.white,
      position: PopupMenuPosition.under,
      child: Text(
        _selectedRideOption ?? "Select",
        style: AppStyles.raleway20Bd.copyWith(color: AppColors.black2, fontWeight: FontWeight.w600),
      ),
    );
  }
}
