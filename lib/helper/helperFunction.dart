import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{

   static String sharedPreferenceUserLoginKey = "ISLOGGEDIN";
   static String sharedPreferenceUserNameKey = "USERNAMEKEY";
   static String sharedPreferenceUserEmailKey = "USEREMAILKEY";

 static Future<bool> saveUserLoggedInSharedPreference
    ( bool isUserLoggedIn) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedPreferenceUserLoginKey, isUserLoggedIn);
}

 static Future<bool> saveUserNameSharedPreference
    (String userName) async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return await prefs.setString(sharedPreferenceUserNameKey, userName);
}

 static Future<bool> saveUserEmailSharedPreference
     (String userEmail) async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return await prefs.setString(sharedPreferenceUserEmailKey, userEmail);
}

   static Future<bool> getUserLoggedInSharedPreference
       () async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return prefs.getBool(sharedPreferenceUserLoginKey);
   }

   static Future<String> getUserNameSharedPreference
       () async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return prefs.getString(sharedPreferenceUserNameKey);
   }
   static Future<String> getUserEmailSharedPreference
       () async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     return prefs.getString(sharedPreferenceUserEmailKey);
   }

}