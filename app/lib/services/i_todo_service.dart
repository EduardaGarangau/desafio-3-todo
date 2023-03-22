abstract class ITodoService {
  Future<List<String>?> loadData(String key);

  Future<void> saveData(String key, List<String> todos);
}
