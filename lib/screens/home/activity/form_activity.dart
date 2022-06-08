import 'package:activity/features/colors.dart';
import 'package:activity/features/widgets/all-functions.dart';
import 'package:activity/features/widgets/widget_buttons.dart';
import 'package:activity/features/widgets/widget_other.dart';
import 'package:activity/features/widgets/widget_text_form.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class FormActivity extends StatefulWidget {
  const FormActivity({Key? key}) : super(key: key);

  @override
  State<FormActivity> createState() => _FormActivityState();
}

class _FormActivityState extends State<FormActivity> {
  TextEditingController txtDate = TextEditingController();

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'meeting',
      'label': 'Meeting',
    },
    {
      'value': 'call',
      'label': 'Phone Call',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ActivityColor.blueOld,
        title: const Text('Activities'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What do you want to do ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                spaceHeight(10.0),
                SelectFormField(
                  cursorColor: Colors.black,
                  autofocus: false,
                  type: SelectFormFieldType.dropdown, // or can be dialog
                  initialValue: 'circle',
                  labelText: 'Choose',
                  style: const TextStyle(color: Colors.black),
                  items: _items,
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 14.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Colors.grey,
                    ),
                  ),
                ),
                spaceHeight(15.0),
                formInput("Who do you want meet/call?",
                    suffixIcon: const Icon(Icons.search)),
                spaceHeight(15.0),
                formDatePicker(
                    "When do you want to meet/call CV Anugrah Jaya ?",
                    controller: txtDate, onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1960),
                    lastDate: DateTime(2040),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        txtDate.text = AllFunctions.convertDate(
                          value.toString(),
                          dateDefault: true,
                        );
                      });
                    }
                  });
                }),
                spaceHeight(15.0),
                formSelect("Why do you want to meet/call CV Anugrah Jaya ?"),
                spaceHeight(15.0),
                formInput("Could you describe it more details ?",
                    minLine: 6, maxLines: null),
                spaceHeight(20.0),
                SizedBox(
                  width: double.infinity,
                  child: buttonGreen(
                    "Submit",
                    onPressed: () {},
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
