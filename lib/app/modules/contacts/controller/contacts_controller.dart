import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_assistant/app/models/contacts/contact_list_model.dart';

import '../../../providers/contacts_provider.dart';
import '../../../theme/Colors.dart';
import '../../../utils/snackbar.dart';
import '../../../utils/utils.dart';

class ContactsController extends GetxController{

  TextEditingController searchController = TextEditingController();
  var title = "Contact".obs;

  var contactList = <ContactData>[].obs;

  final ContactsProvider _provider = ContactsProvider();


  RxBool isLoading = false.obs;

  Future<void> getContactList(String s) async {
    isLoading.value = true;
    sortedContactLists.clear();
    sortedContactLists.value = { for (var letter in List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index))) letter : <ContactData>[].obs };

    EasyLoading.show();
    _provider
        .contactList(s)
        .then((response) async {
      print(RxStatus.success().toString());
      if (response.status == 200) {
        EasyLoading.dismiss();
        if(response.data != null){
          for (var contact in response.data!) {
            // Use addContact method to add and sort contacts
            addContact(contact);
          }
        }else{
        }
        isLoading.value = false;
        // getxSnackbar("", "Successfully", Colors.green);
      }else{
        EasyLoading.dismiss();
        getxSnackbar("", "No Data Found!", red);
        isLoading.value = false;

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
    // Sort the list alphabetically by name
    sortList(firstLetter);
  }

  // Method to sort the list alphabetically by name
  void sortList(String letter) {
    sortedContactLists[letter]?.sort((a, b) => a.name!.compareTo(b.name!));
  }

  @override
  void onInit() async{
    super.onInit();
    await getContactList("");
  }


}