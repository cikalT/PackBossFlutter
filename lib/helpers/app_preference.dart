import 'package:shared_preferences/shared_preferences.dart';

class AppPreference {
  //user
  static final String userLogin = 'user-login';
  static final String userData = 'user-data';
  static final String userToken = 'user-token';
  static final String userId = 'user-id';
  static final String userName = 'user-name';
  static final String userEmail = 'user-email';
  static final String userPhone = 'user-phone';
  //package
  static final String destinationSaved = 'req-recipient-saved';
  static final String reqRecipientName = 'req-recipient-name';
  static final String reqRecipientPhone = 'req-recipient-phone';
  static final String reqRecipientCountryName = 'req-recipient-country';
  static final String reqRecipientProvinceName = 'req-recipient-province';
  static final String reqRecipientRegionName = 'req-recipient-region';
  static final String reqRecipientPostCalCode = 'req-recipient-post';
  static final String reqRecipientDetailAddress = 'req-recipient-address';
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

  //----------------user----------------
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

  static Future<bool> setUserID(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userId, data);
    return true;
  }

  static Future<String> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userId) ?? '';
  }

  static Future<bool> setUserName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userName, data);
    return true;
  }

  static Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userName) ?? '';
  }

  static Future<bool> setUserEmail(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userEmail, data);
    return true;
  }

  static Future<String> getUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmail) ?? '';
  }

  static Future<bool> setUserPhone(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(userPhone, data);
    return true;
  }

  static Future<String> getUserPhone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userPhone) ?? '';
  }

  //----------------request pickup----------------
  static Future<Null> setDestinationSaved(bool status) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(destinationSaved, status);
  }

  static Future<bool> isDestinationSaved() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(destinationSaved) ?? false;
  }

  static Future<bool> setReqRecipientName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientName, data);
    return true;
  }

  static Future<String> getReqRecipientName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientName) ?? '';
  }

  static Future<bool> setReqRecipientPhone(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientPhone, data);
    return true;
  }

  static Future<String> getReqRecipientPhone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientPhone) ?? '';
  }

  static Future<bool> setReqRecipientCountryName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientCountryName, data);
    return true;
  }

  static Future<String> getReqRecipientCountryName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientCountryName) ?? '';
  }

  static Future<bool> setReqRecipientProvinceName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientProvinceName, data);
    return true;
  }

  static Future<String> getReqRecipientProvinceName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientProvinceName) ?? '';
  }

  static Future<bool> setReqRecipientRegionName(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientRegionName, data);
    return true;
  }

  static Future<String> getReqRecipientRegionName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientRegionName) ?? '';
  }

  static Future<bool> setReqRecipientPostCalCode(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientPostCalCode, data);
    return true;
  }

  static Future<String> getReqRecipientPostCalCode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientPostCalCode) ?? '';
  }

  static Future<bool> setReqRecipientDetailAddress(String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(reqRecipientDetailAddress, data);
    return true;
  }

  static Future<String> getReqRecipientDetailAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(reqRecipientDetailAddress) ?? '';
  }

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
