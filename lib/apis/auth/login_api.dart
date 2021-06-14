import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/models/index.dart';

class LoginApi extends Api {
  String url = '${AppConfig.getApiUrl}/auth/login';

  Future<ResultApi> request({
    @required String email,
    @required String password,
  }) async {
    payload = {
      "email": email,
      "password": password,
    };

    try {
      var response =
          await post(url, body: json.encode(payload), headers: headers);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var responseBody = json.decode(response.body);
        print(responseBody);
        var data = GetLoginResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
