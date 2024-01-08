import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_detail_model.dart';
import 'package:my_assistant/app/models/contacts/contact_list_model.dart';
import 'package:my_assistant/app/models/contacts/contact_note_list_model.dart';
import 'package:my_assistant/app/utils/DefaultResponse.dart';

import '../../models/LoginResponse.dart';
import '../../models/contacts/invoice_list_model.dart';
import '../../utils/constants.dart';
import '../../utils/error/ErrorResponse.dart';
import '../../utils/utils.dart';

class ContactsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ContactList> contactList(String name) async {
    var url = "${Constants.baseUrl}contact-list?search_name=$name";
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

      return ContactList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<ContactDetail> contactDetail(String id) async {
    var url = "${Constants.baseUrl}contact-detail/$id";

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

      return ContactDetail.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<ContactNoteList> noteList(String id) async {
    var url = "${Constants.baseUrl}client_note_list/$id";

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

      return ContactNoteList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  //TODO: add file model
  Future<ContactNoteList> fileList(String id) async {
    var url = "${Constants.baseUrl}client_file_list/$id";

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

      return ContactNoteList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  Future<InvoiceList> invoiceList(String id) async {
    var url = "${Constants.baseUrl}client_invoice_list/$id";

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

      return InvoiceList.fromJson(jsonDecode(response.bodyString!));
    }
  }

  /// post methods

  Future<DefaultResponse> createContact(dynamic body)async{

      var url = "${Constants.baseUrl}contact-create";

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
  Future<DefaultResponse> contactUpdate(dynamic body, dynamic id)async{

      var url = "${Constants.baseUrl}contact-update/$id";

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
  Future<DefaultResponse> createNote(String contactListId, String note)async{

      var url = "${Constants.baseUrl}client_note_store";

      print("login url $url");
      final response = await post(
          url,
          {
            'contact_list_id' : contactListId,
            'note' : note,
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

        return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
      }
    }
  Future<DefaultResponse> createFile(String contactListId, File file)async{

      var url = "${Constants.baseUrl}client_file_store";

      print("login url $url");
      final response = await post(
          url,
          {
            'contact_list_id' : contactListId,
            'file' : file,
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

        return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
      }
    }
  Future<DefaultResponse> createInvoice(String contactListId, String itemName, String price)async{

      var url = "${Constants.baseUrl}client_invoice_store";

      print("login url $url");
      final response = await post(
          url,
          {
            'contact_list_id' : contactListId,
            'item_name' : itemName,
            'price' : price,
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

        return DefaultResponse.fromJson(jsonDecode(response.bodyString!));
      }
    }



}
