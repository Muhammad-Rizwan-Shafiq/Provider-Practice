import 'package:flutter/foundation.dart';
import 'package:providerpractice/controllers/login_controller.dart';
import 'package:http/http.dart' as http;


class AuthProvider with ChangeNotifier {
  bool _loading = false;

  get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  void loginPost(String email, String password) async {
    setLoading(true);
    try{
      final response = await http
          .post(Uri.parse("https://reqres.in/api/login"), body: {'email': email, 'password': password});
      if(response.statusCode == 200){
        setLoading(false);
        print("success");
      }else{
        setLoading(false);
        print("failed");
      }

    }
    catch(e){
      setLoading(false);
      print(e.toString());
    }
  }
}
