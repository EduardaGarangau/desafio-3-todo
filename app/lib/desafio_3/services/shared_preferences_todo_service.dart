import 'package:app/desafio_3/services/i_todo_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesTodoService extends ITodoService {
  @override
  Future<List<String>?> loadData(String key) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(key);
  }

  @override
  Future<void> saveData(String key, List<String> todos) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var list = sharedPreferences.getStringList(key) ?? [];
    await sharedPreferences.setStringList(key, todos);
  }
}
