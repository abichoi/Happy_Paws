import 'package:flutter/material.dart';

final List<String> sexlist = ['01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','10'];
final List<String> dropdownlistValue = sexlist;

class SexDropDownWidget extends StatefulWidget {
  const SexDropDownWidget( {Key? key}) : super(key: key);

  @override

  State<SexDropDownWidget> createState() => _SexDropDownWidgetState();
}

class _SexDropDownWidgetState extends State<SexDropDownWidget> {
  @override
  String showvalue = dropdownlistValue.first;
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: showvalue,
          icon: const Icon(Icons.arrow_drop_down_outlined),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          borderRadius:const BorderRadius.all(Radius.circular(8.0)),
          dropdownColor: const Color(0xFFF2F3F5),
          iconEnabledColor:const Color(0xFFB8C1CC),
          onChanged: (String? newValue) {
            setState(() {
              showvalue = newValue!;
            });
          },
          items: dropdownlistValue
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
    );
  }
}
