import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';

class GetOriginAPi extends Api {
  String url = '${AppConfig.getApiUrl}/package/origin/show-by-user';

  Future<ResultApi> request(String userId) async {
    url += '/$userId';
    var token = await AppPreference.getMobileToken();
    var headerLoad = headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      generateHeader();
      var response = await get(url, headers: headerLoad);

      var responseBody = json.decode(response.body);
      print(responseBody);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var data = GetSavedOriginResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
