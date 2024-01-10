import 'dart:convert';

import 'package:get/get.dart';
import 'package:my_assistant/app/models/lead/lead_detail_model.dart';
import 'package:my_assistant/app/models/lead/lead_list_model.dart';
import 'package:my_assistant/app/models/task/task_detail.dart';
import 'package:my_assistant/app/models/task/task_list_model.dart';
import 'package:my_assistant/app/utils/DefaultResponse.dart';

import '../utils/constants.dart';
import '../utils/error/ErrorResponse.dart';
import '../utils/utils.dart';



class LeadProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<LeadList> leadList({required String searchName, required String status}) async {

    var url = "${Constants.baseUrl}lead-list?search_name=$searchName&status=$status";
    print(" url $url");
    final response = await get(
        url,
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

      return LeadList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<LeadDetail> leadDetail(String id) async {
    var url = "${Constants.baseUrl}lead-detail/$id";

    print("login url $url");
    final response = await get(
        url,
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

      return LeadDetail.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<DefaultResponse> leadDelete(String id) async {
    var url = "${Constants.baseUrl}lead-delete/$id";

    print("login url $url");
    final response = await get(
        url,
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


  /// post methods

  Future<DefaultResponse> leadCreate(dynamic body)async{

    var url = "${Constants.baseUrl}lead-create";

    print("login url $url");
    final response = await post(
        url,
        body,
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<DefaultResponse> leadUpdate(dynamic body, dynamic id)async{

    var url = "${Constants.baseUrl}lead-update/$id";

    print("login url $url");
    final response = await post(
        url,
        body,
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<DefaultResponse> leadStatusChange(dynamic body, dynamic id)async{

    var url = "${Constants.baseUrl}lead-status/$id";

    print("login url $url");
    final response = await post(
        url,
        body,
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

      return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
    }
  }


}
