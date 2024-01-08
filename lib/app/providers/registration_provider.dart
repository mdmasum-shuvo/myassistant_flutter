

import 'dart:convert';

import 'package:get/get.dart';

import '../utils/DefaultResponse.dart';
import '../utils/constants.dart';
import '../utils/error/ErrorResponse.dart';
import '../utils/utils.dart';


class RegistrationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }


  Future<DefaultResponse> create(qParams) async {
    var url = "${Constants.baseUrl}register";

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
