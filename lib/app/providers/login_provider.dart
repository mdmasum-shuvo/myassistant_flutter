import 'dart:convert';

import 'package:get/get.dart';

import '../models/LoginResponse.dart';
import '../utils/constants.dart';
import '../utils/error/ErrorResponse.dart';
import '../utils/utils.dart';



class LoginProvider extends GetConnect {


  Future<LoginResponse> login(String userName,String password) async {
    var url = "${Constants.baseUrl}login";

    print("login url $url");
    final response = await post(
        url,
        {
          "email": userName,
          "password": password
        },
        headers: Constants.headers);
    if (response.status.hasError) {
      String message = "Something went wrong!";
      try {
        message =
        ErrorResponse.fromJson(jsonDecode(response.bodyString!)).message!;
      } catch (e) {
        print(e);
      }

      Utils.showProviderError(response.statusCode, message);
      return Future.error(response.bodyString!);
    } else {
      print(response.body);

      return LoginResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


}