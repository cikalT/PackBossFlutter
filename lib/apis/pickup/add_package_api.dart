import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';

class AddPackageAPi extends Api {
  String url = '${AppConfig.getApiUrl}/package/store';

  Future<ResultApi> request({
    @required String category,
    @required String packageName,
    @required String recipientName,
    @required String recipientPhone,
    @required String weight,
    @required String dimension,
  }) async {
    payload = {
      "category": category,
      "package_name": packageName,
      "recipient_name": recipientName,
      "recipient_phone": recipientPhone,
      "weight": weight,
      "dimension": dimension,
    };

    var token = await AppPreference.getMobileToken();
    var headerLoad = headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      generateHeader();
      var response =
          await post(url, body: json.encode(payload), headers: headerLoad);

      var responseBody = json.decode(response.body);
      print(responseBody);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var data = GetAddPackageResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
