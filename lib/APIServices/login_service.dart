import 'package:http/http.dart' as http;
import 'dart:convert';

import 'login_model.dart';
class LoginService{
  Future<LoginResponeModel> login(LoginRequestModel loginRequestModel) async{
    String url="https://reqres.in/api/login";
    final response = await http.post(url,body:loginRequestModel.toJson());
    if(response.statusCode==200 || response.statusCode==400){
      return LoginResponeModel.fromJson(json.decode(response.body));
    }else{
      throw Exception('faild to load data');
    }
  }
}