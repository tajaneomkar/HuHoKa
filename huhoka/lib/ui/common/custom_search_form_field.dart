import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:huhoka/ui/common/app_colors.dart';

class CustomSearchFormField extends FormField<String> {
  final List<String> items;
  final String? selectedValue;
  final String? label;
  final void Function(String?)? onChanged;
  final double? height;
  final bool? isEnable;
  final String? Function(String?)? validator;
  final bool showSearchBox;

  CustomSearchFormField({
    Key? key,
    required this.items,
    this.selectedValue,
    this.label,
    this.onChanged,
    this.height,
    this.isEnable,
    this.validator,
    required this.showSearchBox,
  }) : super(
          key: key,
          initialValue: selectedValue,
          validator: validator,
          builder: (FormFieldState<String> state) {
            bool hasError = state.hasError;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownSearch<String>(
                  enabled: isEnable ?? true,
                  selectedItem: selectedValue == null ? label : selectedValue,
                  onChanged: onChanged,
                  popupProps: PopupProps.dialog(
                      dialogProps: const DialogProps(
                          backgroundColor: Color.fromARGB(255, 239, 240, 243),
                          elevation: 8),
                      listViewProps: const ListViewProps(
                          dragStartBehavior: DragStartBehavior.down),
                      loadingBuilder: (context, searchEntry) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorBuilder: (context, searchEntry, exception) {
                        return const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("something went wrong"));
                      },
                      emptyBuilder: (context, searchEntry) {
                        return const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text("No Data Found"),
                        );
                      },
                      fit: FlexFit.loose,
                      showSearchBox: showSearchBox),
                  dropdownButtonProps: DropdownButtonProps(
                      color: isEnable == true
                          ? kcPrimaryColor
                          : isEnable == false
                              ? Colors.grey
                              : kcPrimaryColor),
                  dropdownDecoratorProps: DropDownDecoratorProps(
                    dropdownSearchDecoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: hasError ? Colors.red : kcPrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: hasError ? Colors.red : kcPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                  items: items,
                ),
                if (hasError)
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "    Please enter some text",
                      style: TextStyle(
                          color: Color.fromARGB(255, 200, 28, 16),
                          fontSize: 12),
                    ),
                  ),
              ],
            );
          },
        );

  @override
  FormFieldState<String> createState() => FormFieldState<String>();
}
