import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

List<DropDownValueModel> getDropDownValues() {
  List<DropDownValueModel> list = [];
  list.add(DropDownValueModel(name: "Duhok", value: "Duhok"));
  list.add(DropDownValueModel(name: "Hewler", value: "Hewler"));
  list.add(DropDownValueModel(name: "Sulaimani", value: "Sulaimani"));
  return list;
}

DropDownTextField DropDownTextFieldCustom() {
  return DropDownTextField(
    dropDownList: getDropDownValues(),

    // dropdownColor: Colors.grey,

    listTextStyle: const TextStyle(color: Colors.black),
    onChanged: (val) {
      // setState(() {
      //   cityDropDown = val.toString();
      //   print(cityDropDown);
      // });
    },
    validator: (value) {
      if (value == null) {
        return "Required field";
      } else {
        return null;
      }
    },
    textFieldDecoration: InputDecoration(
      hintText: 'Select Your City',
      hintStyle: TextStyle(
        fontSize: 12,
        color: Colors.black38,
      ),
    ),
    textStyle: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    initialValue: "Duhok",
    // listSpace: 10.sp,
    listPadding: ListPadding(top: 10),
    enableSearch: false,
    dropDownItemCount: 3,
  );
}
