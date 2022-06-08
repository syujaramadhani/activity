import 'package:activity/features/services/activities_service.dart';
import 'package:activity/models/activities_model.dart';
import 'package:get/state_manager.dart';

class ActivitiesListController extends GetxController {
  var isLoading1 = true.obs;

  late ActivitiesModel activitiesModel;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  _loadData() async {
    fetchGetActivities();
  }

  void fetchGetActivities() async {
    isLoading1(true);
    try {
      var data = await ActivitiesServices.fetchNowPlaying();
      print(data);
      activitiesModel = data;
      update();
      isLoading1(false);
    } finally {}
    update();
  }
}
