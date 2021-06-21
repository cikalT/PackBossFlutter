import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/helpers/index.dart';
import 'package:packboss/models/index.dart';

class GetTrackingApi extends Api {
  String url = '${AppConfig.getApiUrl}/tracking';

  Future<ResultApi> request(String transactionId) async {
    url += '/$transactionId';
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
        var data = GetPackageTrackingResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.listData = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
