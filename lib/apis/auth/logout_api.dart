import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';

class LogoutApi extends Api {
  String url = '${AppConfig.getApiUrl}/auth/logout';

  Future<ResultApi> request() async {
    var token = await AppPreference.getMobileToken();
    var headerLoad = headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      generateHeader();
      var response = await post(url, headers: headerLoad);

      var responseBody = json.decode(response.body);
      print(responseBody);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var data = GetLogoutResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
