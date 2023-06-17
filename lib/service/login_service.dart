import 'package:shared_preferences/shared_preferences.dart';

String token = "token";

void saveToken(String valueToken) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.setString(token, valueToken);
}

Future<String> getToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // ignore: no_leading_underscores_for_local_identifiers
  final _token = prefs.getString(token);
  return _token ?? "";
}

void removeToken() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.remove(token);
}
