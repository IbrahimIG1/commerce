import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  // SharedPrefHelper._();

  static late SharedPreferences sharedprefrence;
  static void init() async {
    sharedprefrence = await SharedPreferences.getInstance();
  }

  /// save [value] with a [key] in shared prefrence
  static Future<void> setData(String key, dynamic value) async {
    // SharedPreferences sharedPref = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        await sharedprefrence.setString(key, value);
      case int:
        await sharedprefrence.setInt(key, value);
      case double:
        await sharedprefrence.setDouble(key, value);
      case bool:
        await sharedprefrence.setBool(key, value);
      default:
        return null;
    }
  }

  /// get String data from shared prefrence with [key]
  static getStringData(String key) async {
     sharedprefrence.getString(key);
    // await SharedPreferences.getInstance().then((value) {
    //   value.getString(key) ?? "No String Data To get by sharedPref";
    // });
  }

  /// get Int data from shared prefrence with [key]
  getIntData(String key) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getInt(key) ?? "No Int Data To get by sharedPref";
  }

  /// rermove a value from shared Prefrence with given [key]
  removeSpecificeData(String key) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove(key);
  }

  /// rermove all keys and values from shared Prefrence
  clearAllData() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.clear().then((onValue) {
      print("clear data done");
    });
  }
}
