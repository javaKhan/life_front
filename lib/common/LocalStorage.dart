import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage localStorage = new LocalStorage();
  getInstance(){
    return this.localStorage;
  }

  setLocalValue(){
    final sp = SharedPreferences.getInstance();
  }

}