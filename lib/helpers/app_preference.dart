import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  static final String userLogin = 'user-login';
  static final String userToken = 'user-token';
  static final String reqOriginId = 'req-origin-id';
  static final String reqOriginName = 'req-origin-name';
  static final String reqOriginAddress = 'req-origin-address';
  static final String reqDestinationId = 'req-destination-id';
  static final String reqDestinationName = 'req-destination-name';
  static final String reqDestinationAddress = 'req-destination-address';
  static final String reqPackageId = 'req-package-id';
  static final String reqPackageName = 'req-package-name';
  static final String reqPackageType = 'req-package-type';
  static final String reqPackageWeight = 'req-package-weight';

  static Future<Null> setLogin(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(userLogin, status);
  }

  static Future<bool> isLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userLogin) ?? false;
  }

  static Future<bool> setMobileToken(String token) async {
    setLogin(true);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userToken, token);
    return true;
  }

  static Future<String> getMobileToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userToken) ?? '';
  }

  //----------------request pickup----------------
  static Future<bool> setReqOriginId(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqOriginId, data);
    return true;
  }

  static Future<String> getReqOriginId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqOriginId) ?? '';
  }

  static Future<bool> setReqOriginName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqOriginName, data);
    return true;
  }

  static Future<String> getReqOriginName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqOriginName) ?? '';
  }

  static Future<bool> setReqOriginAddress(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqOriginAddress, data);
    return true;
  }

  static Future<String> getReqOriginAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqOriginAddress) ?? '';
  }

  static Future<bool> setReqDestinationId(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqDestinationId, data);
    return true;
  }

  static Future<String> getReqDestinationId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqDestinationId) ?? '';
  }

  static Future<bool> setReqDestinationName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqDestinationName, data);
    return true;
  }

  static Future<String> getReqDestinationName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqDestinationName) ?? '';
  }

  static Future<bool> setReqDestinationAddress(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqDestinationAddress, data);
    return true;
  }

  static Future<String> getReqDestinationAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqDestinationAddress) ?? '';
  }

  static Future<bool> setReqPackageId(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqPackageId, data);
    return true;
  }

  static Future<String> getReqPackageId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqPackageId) ?? '';
  }

  static Future<bool> setReqPackageName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqPackageName, data);
    return true;
  }

  static Future<String> getReqPackageName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqPackageName) ?? '';
  }

  static Future<bool> setReqPackageType(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqPackageType, data);
    return true;
  }

  static Future<String> getReqPackageType() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqPackageType) ?? '';
  }

  static Future<bool> setReqPackageWeight(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqPackageWeight, data);
    return true;
  }

  static Future<String> getReqPackageWeight() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqPackageWeight) ?? '';
  }
}
