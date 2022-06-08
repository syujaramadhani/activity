import 'package:activity/features/colors.dart';
import 'package:activity/features/widgets/widget_buttons.dart';
import 'package:activity/features/widgets/widget_other.dart';
import 'package:activity/features/widgets/widget_text_form.dart';
import 'package:flutter/material.dart';

class DetailHomeScreen extends StatefulWidget {
  const DetailHomeScreen({Key? key}) : super(key: key);

  @override
  State<DetailHomeScreen> createState() => _DetailHomeScreenState();
}

class _DetailHomeScreenState extends State<DetailHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ActivityColor.blueOld,
        title: const Text('Activity Info'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey, // red as border color.
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Details",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const Text(
                        "Meeting with CV Anugrah Jaya at 01-April-2022 09:00 to discuss about New Order",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      spaceHeight(10.0),
                      SizedBox(
                        width: double.infinity,
                        child: buttonBlueOld(
                          "Edit Activity",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                spaceHeight(20.0),
                formInput("Could you describe it more details ?",
                    minLine: 6, maxLines: null),
                spaceHeight(20.0),
                SizedBox(
                  width: double.infinity,
                  child: buttonGreen(
                    "Complete Activity",
                    onPressed: () {},
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
