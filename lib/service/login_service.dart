import '../helpers/user_info.dart';

class LoginService {
  Future<bool> login(String email, String password) async {
    bool isLogin = false;
    if (email == 'aldianfal3@gmail.com' && password == 'admin') {
      await userInfo().setToken("admin");
      await userInfo().setUserID("1");
      await userInfo().setUsername("admin");
      isLogin = true;
    }
    return isLogin;
  }
}
