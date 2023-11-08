import 'package:capture_text/core/models/text_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String itemNameKey = 'localSavedTexts';

class LocalStorageServices {
  LocalStorageServices._();
  static Future<void> saveInfos(List<InfoModel> infos) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    var infosString = <String>[];

    for (var info in infos) {
      infosString.add(info.toJson());
    }

    await preferences.setStringList(itemNameKey, infosString);
  }

  static Future<List<String>?> getInfos() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.getStringList(itemNameKey);
  }
}
