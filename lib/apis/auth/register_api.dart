import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/models/index.dart';

class RegisterApi extends Api {
  String url = '${AppConfig.getApiUrl}/auth/register';

  Future<ResultApi> request({
    @required String name,
    @required String email,
    @required String phone,
    @required String password,
    @required String cPassword,
  }) async {
    payload = {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "c_password": cPassword,
    };

    try {
      var response =
          await post(url, body: json.encode(payload), headers: headers);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var responseBody = json.decode(response.body);
        print(responseBody);
        var data = GetRegisterResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
