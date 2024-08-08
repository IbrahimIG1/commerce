import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPrefHelper._();


  /// save [value] with a [key] in shared prefrence
  Future<void> setData(String key, dynamic value) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        await sharedPref.setString(key, value);
      case int:
        await sharedPref.setInt(key, value);
      case double:
        await sharedPref.setDouble(key, value);
      case bool:
        await sharedPref.setBool(key, value);
      default:
        return null;
    }
  }
  /// get String data from shared prefrence with [key]
  getStringData(String key) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.getString(key) ?? "No String Data To get by sharedPref";
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
    sharedPref.clear();
  }
}
