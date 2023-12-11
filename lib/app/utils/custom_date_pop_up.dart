
import 'package:flutter/cupertino.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

Future<DateTime?> getDate(BuildContext context)async{
   return  await showRoundedDatePicker(
    height: 300,
    context: context,
    locale: Locale('en', 'US'),
    initialDate: DateTime(DateTime.now().year - 30),
    firstDate: DateTime(DateTime.now().year - 40),
    lastDate: DateTime(DateTime.now().year + 40),
    borderRadius: 16,
  );

}