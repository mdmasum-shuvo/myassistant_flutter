import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_list_model.dart';
import 'package:my_assistant/app/provider/providers/contacts_provider.dart';

import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

class ContactsController extends GetxController{

  TextEditingController searchController = TextEditingController();
  var title = "Contact".obs;

  var contactList = <ContactData>[].obs;

  final ContactsProvider _provider = ContactsProvider();


  Future<void> getContactList() async {
    sortedContactLists.clear();
    sortedContactLists.value = { for (var letter in List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index))) letter : <ContactData>[].obs };

    EasyLoading.show();
    _provider
        .contactList("",)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null){
          for (var contact in response.data!) {
            // Use addContact method to add and sort contacts
            addContact(contact);
          }
          debugPrint("Success: data length: ${response.data!.length} ${sortedContactLists.values.length}");
        }else{
          debugPrint("no data: ${response.toString()}");
        }

        // getxSnackbar("", "Successfully", Colors.green);
      }else{
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);

        Utils.showControllerError(response);
      }
    });
  }

  // Map to hold lists from A to Z
   RxMap<String, RxList<ContactData>> sortedContactLists = { for (var letter in List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index))) letter : <ContactData>[].obs }.obs;

  // Method to add contact to the appropriate list based on the first letter of the name
  void addContact(ContactData contact) {
    String firstLetter = contact.name?.toUpperCase()[0] ?? '';
    sortedContactLists[firstLetter]?.add(contact);
    debugPrint("Adding to the sorted list: Letter: $firstLetter  length: ${sortedContactLists.values.length}");
    // Sort the list alphabetically by name
    sortList(firstLetter);
  }

  // Method to sort the list alphabetically by name
  void sortList(String letter) {
    sortedContactLists[letter]?.sort((a, b) => a.name!.compareTo(b.name!));
    debugPrint("after sorting length: ${sortedContactLists.values.length}");

  }

  @override
  void onInit() async{
    super.onInit();
    await getContactList();
  }


}