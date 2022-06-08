import 'package:activity/features/colors.dart';
import 'package:activity/features/controllers/activities_controller.dart';
import 'package:activity/features/widgets/widget_dates.dart';
import 'package:activity/routes/navigations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenHomeScreen extends StatelessWidget {
  OpenHomeScreen({Key? key}) : super(key: key);

  final ActivitiesListController activitiesListController =
      Get.put(ActivitiesListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Obx(
          () => activitiesListController.isLoading1.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: activitiesListController
                      .activitiesModel.activities.length,
                  itemBuilder: (context, index) {
                    var dataActivity = activitiesListController
                        .activitiesModel.activities[index];

                    return InkWell(
                      onTap: () {
                        Navigation.toDetailHomeScreen(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dateFormatterDefault(dataActivity.theDate),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              leading: const Text(
                                "09:00",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              title: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      dataActivity.activity,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  color: ActivityColor.blueCard),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ActivityColor.blueOld,
        onPressed: () {
          Navigation.toFormActivity(context);
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
