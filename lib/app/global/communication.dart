import 'package:url_launcher/url_launcher.dart';

Uri parseUrl(String? uri){
  return Uri.parse(uri ?? "");
}


Future<void> launchWhatsApp( phoneNumber) async {
  final whatsApp = Uri.parse(
      "https://wa.me/$phoneNumber");
  if (true) {
    launchUrl(whatsApp);
  } else {
    throw 'Could not launch $whatsApp';
  }

}

Future<void> launchEmail( email) async {
  final mail = Uri.parse(
      "mailto:$email");
  if (true) {
    launchUrl(mail);
  } else {
    throw 'Could not launch $mail';
  }

}

Future<void> initiateCall( phn) async {
  final call = Uri.parse(
      'tel:$phn');
  if (true) {
    launchUrl(call);
  } else {
    throw 'Could not launch $call';
  }

}


// Future<void> launchWhatsApp(phoneNumber) async {
//   // final phoneNumber = controller.contactDetail.value?.whatsapp;
//   if (phoneNumber != null && await canLaunchUrl(parseUrl("https://wa.me/$phoneNumber"))) {
//     await launchUrl(parseUrl("https://wa.me/$phoneNumber"));
//   } else {
//     // Handle error
//   }
// }

// Future<void> launchEmail(email) async {
//   // final email = controller.contactDetail.value?.email;
//   if (email != null && await canLaunchUrl(parseUrl("mailto:$email"))) {
//     await launchUrl(parseUrl("mailto:$email"));
//   } else {
//     // Handle error
//   }
// }

// Future<void> initiateCall(phoneNumber) async {
//   // final phoneNumber = controller.contactDetail.value?.phoneNumber;
//   if (phoneNumber != null && await canLaunchUrl(parseUrl("tel:$phoneNumber"))) {
//     await launchUrl(parseUrl("tel:$phoneNumber""tel:$phoneNumber"));
//   } else {
//     // Handle error
//   }
// }

