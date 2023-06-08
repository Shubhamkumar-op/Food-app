import 'package:flutter/material.dart';

class customDropdownbutton extends StatelessWidget {
  List<String> values;
  double width;

  customDropdownbutton({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 0, 53, 1),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 0, 53, 1),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
