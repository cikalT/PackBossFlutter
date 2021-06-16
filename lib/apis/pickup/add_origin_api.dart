import 'package:http/http.dart';
import 'package:packboss/apis/api.dart';
import 'package:packboss/helpers/app_config.dart';
import 'package:packboss/models/index.dart';

class AddOriginAPi extends Api {
  String url = '${AppConfig.getApiUrl}/package/origin';

  Future<ResultApi> request({
    @required String countryName,
    @required String provinceName,
    @required String regionName,
    @required String postalCode,
    @required String detailAddress,
  }) async {
    payload = {
      "country_name": countryName,
      "province_name": provinceName,
      "region_name": regionName,
      "postal_code": postalCode,
      "detail_address": detailAddress,
    };

    try {
      generateHeader();
      var response =
          await post(url, body: json.encode(payload), headers: headers);

      resultApi.statusCode = response.statusCode;
      if (resultApi.statusCode == 200) {
        var responseBody = json.decode(response.body);
        print(responseBody);
        var data = GetAddOriginResponse.fromJson(responseBody);
        resultApi.status = true;
        resultApi.data = data?.content;
      }
    } catch (e) {
      printError(e);
    }
    return resultApi;
  }
}
