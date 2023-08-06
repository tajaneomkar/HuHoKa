
import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> dropdownItems;
  final String? selectedValue;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final String? hintText;
  final String? labelText;
  final bool? isEnable;
  final double? height;
  final String? Function(String?)? validator;

  const CustomDropdown({
    Key? key,
    required this.dropdownItems,
    this.selectedValue,
    this.onChanged,
    this.onSaved,
    this.hintText,
    this.labelText,
    this.height,
    this.validator,
    this.isEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.only(left: 20, right: 10),
      decoration: isEnable == true
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: kcPrimaryColor, width: 1),
            )
          : null,
      child: DropdownButtonFormField<String>(
        decoration:InputDecoration(border: InputBorder.none),
        isExpanded: true,
        hint: Text(hintText ?? 'Select an option'),
        value: selectedValue,
        items: dropdownItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    // style: const TextStyle(
                    //   fontSize: 16,
                    // ),
                  ),
                ))
            .toList(),
        validator: validator,
        onChanged: isEnable == true ? onChanged : null,
        onSaved: onSaved,
        icon: isEnable == true ? const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ): Icon(Icons.arrow_drop_down, color: Colors.transparent ,),
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
