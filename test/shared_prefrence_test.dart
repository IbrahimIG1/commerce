import 'package:flutter_test/flutter_test.dart';
import 'package:g_commerce/core/helper/shared_prefrence.dart';
import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'shared_prefrence_test.mocks.dart';

@GenerateMocks([SharedPrefImpl])
void main() {
  setUp(() {
  // late final SharedPrefHelper sharedPrefHelper;
  //   sharedPrefHelper = MockSharedPrefHelper();
  });
  test('set Data in Shared Prefrence', () async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences pref = await SharedPreferences.getInstance();

    // Arrange
    String id = '123';
    bool value = false;

    pref.setString('id', id);
    pref.setBool('value', value);

    

    // assert
    expect(pref.getBool('value'), false);
    expect(pref.getString('id'), '123');
  });
}
