import 'dart:convert';

import 'package:get/get.dart';
import 'package:my_assistant/app/models/task/task_detail.dart';
import 'package:my_assistant/app/models/task/task_list_model.dart';
import 'package:my_assistant/app/utils/DefaultResponse.dart';

import '../utils/constants.dart';
import '../utils/error/ErrorResponse.dart';
import '../utils/utils.dart';



class TaskProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<TaskList> taskList() async {
    var url = "${Constants.baseUrl}task-list";
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

      return TaskList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<TaskDetail> taskDetail(String id) async {
    var url = "${Constants.baseUrl}task-detail/$id";

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

      return TaskDetail.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<DefaultResponse> taskDelete(String id) async {
    var url = "${Constants.baseUrl}task-delete/$id";

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

  Future<DefaultResponse> taskCreate(dynamic body)async{

    var url = "${Constants.baseUrl}task-create";

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

  Future<DefaultResponse> taskUpdate(dynamic body, dynamic id)async{

    var url = "${Constants.baseUrl}task-update/$id";

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
