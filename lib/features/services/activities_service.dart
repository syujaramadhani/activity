import 'package:activity/models/activities_model.dart';
import 'package:activity/networks/api_provider.dart';

class ActivitiesServices {
  static final ApiProvider _provider = ApiProvider();
  static Future<ActivitiesModel> fetchNowPlaying() async {
    final response = await _provider.get(
      "",
    );
    print(response);
    return ActivitiesModel.fromJson(response);
  }
}
