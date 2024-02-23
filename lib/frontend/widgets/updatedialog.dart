// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';

class updateDialogbox extends StatefulWidget {
  const updateDialogbox({Key? key}) : super(key: key);

  @override
  State<updateDialogbox> createState() => _updateDialogboxState();
}

class _updateDialogboxState extends State<updateDialogbox> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Theme(
      data: Theme.of(context).copyWith(
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
        ),
      ),
      child: Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Update Status',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            CheckboxListTile(
              controlAffinity:
                  ListTileControlAffinity.leading, // Checkbox on the left
              title: const Text('Sold '),
              checkColor: Theme.of(context).colorScheme.background,
              activeColor: Theme.of(context).colorScheme.secondary,
              value: _value1,
              onChanged: (bool? value) {
                setState(() {
                  _value1 = value!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity:
                  ListTileControlAffinity.leading, // Checkbox on the left
              title: const Text('Expired'),
              checkColor: Theme.of(context).colorScheme.background,
              activeColor: Theme.of(context).colorScheme.secondary,
              value: _value2,
              onChanged: (bool? value) {
                setState(() {
                  _value2 = value!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity:
                  ListTileControlAffinity.leading, // Checkbox on the left
              title: const Text('Online'),
              checkColor: Theme.of(context).colorScheme.background,
              activeColor: Theme.of(context).colorScheme.secondary,
              value: _value3,
              onChanged: (bool? value) {
                setState(() {
                  _value3 = value!;
                });
              },
            ),
            CheckboxListTile(
              controlAffinity:
                  ListTileControlAffinity.leading, // Checkbox on the left
              title: const Text('Cancelled'),
              checkColor: Theme.of(context).colorScheme.background,
              activeColor: Theme.of(context).colorScheme.secondary,
              value: _value4,
              onChanged: (bool? value) {
                setState(() {
                  _value4 = value!;
                });
              },
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(
                  screenSize.width * 0.05,
                ),
                child: MyButton(
                  text: "Update Status",
                  textColor: Theme.of(context).colorScheme.background,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  onTap: () => {},
                  fontSize: 18.0,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
