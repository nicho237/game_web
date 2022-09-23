import 'package:flutter/material.dart';

class CheckEula extends StatefulWidget {
  const CheckEula({super.key});

  @override
  State<CheckEula> createState() => _CheckEulaState();
}

class _CheckEulaState extends State<CheckEula> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 334),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                // This is where we update the state when the checkbox is tapped
                setState(() {
                  isChecked = value!;
                });
              }),
          const Expanded(
              child: Text(
            'Saya Siap Mengikuti Squadron Realistic Battle',
            style: TextStyle(fontSize: 11),
          )),
          const SizedBox(width: 20,),


        ],
      ),
    );
  }
}


class CheckRules extends StatefulWidget {
  const CheckRules({super.key});

  @override
  State<CheckRules> createState() => _CheckRulesState();
}

class _CheckRulesState extends State<CheckRules> {
 
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 334),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
              value: _value,
             onChanged: (value) {
                setState(() {
                  _value = value!;
                });
              },
              ),
          const Expanded(
              child: Text(
            'Saya Sudah Membaca Rules',
            style: TextStyle(fontSize: 11),
          )),
          const SizedBox(width: 20,),


        ],
      ),
    );
  }
}
