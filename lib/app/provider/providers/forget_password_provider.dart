

import 'dart:convert';

import 'package:get/get.dart';

import '../../utils/DefaultResponse.dart';
import '../../utils/constants.dart';
import '../../utils/error/ErrorResponse.dart';
import '../../utils/utils.dart';

class ForgetPasswordProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }


  Future<DefaultResponse> otpSend(qParams) async {
    var url = "${Constants.baseUrl}email_send";

    Map<String, String> headers = {
      // 'Authorization': Constants.token,
      // "Accept": "multipart/form-data",
    };
    //param(qParams);
    print("login url $url");
    final response = await post(url, qParams,headers: headers);
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<DefaultResponse> otpVerify(qParams) async {
    var url = "${Constants.baseUrl}opt_verify";

    Map<String, String> headers = {
      // 'Authorization': Constants.token,
      // "Accept": "multipart/form-data",
    };
    //param(qParams);
    print("login url $url");
    final response = await post(url, qParams,headers: headers);
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }
   Future<DefaultResponse> changePassword(qParams) async {
    var url = "${Constants.baseUrl}password_change";

    Map<String, String> headers = {
      // 'Authorization': Constants.token,
      // "Accept": "multipart/form-data",
    };
    //param(qParams);
    print("login url $url");
    final response = await post(url, qParams,headers: headers);
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


}
