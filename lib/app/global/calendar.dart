// import "package:flutter/material.dart";
// import "package:get/get.dart";
// import "package:my_assistant/app/modules/create_task/controllers/create_task_controller.dart";
//
// showCalendar(BuildContext context, CreateTaskController controller){
//   Get.dialog(
//     Dialog(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//
//               ElevatedButton(
//                 onPressed: () => controller.toggleSelection(true),
//                 child: Text('Calendar'),
//               ),
//               ElevatedButton(
//                 onPressed: () => controller.toggleSelection(false),
//                 child: Text('Time'),
//               ),
//             ],
//           ),
//           Obx(() => Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(controller.selectedDateTime.value),
//           )),
//           controller.isCalendarSelected.value
//               ? CalendarDatePicker(
//             initialDate: DateTime.now(),
//             firstDate: DateTime(2022),
//             lastDate: DateTime(2025),
//             onDateChanged: (DateTime dateTime) =>
//                 controller.selectDateTime(dateTime),
//           )
//               : InkWell(
//             onTap: () async {
//               TimeOfDay? selectedTime = await showTimePicker(
//                 context: context,
//                 initialTime: TimeOfDay.now(),
//               );
//               if (selectedTime != null) {
//                 DateTime dateTime = DateTime.now()
//                     .add(Duration(hours: selectedTime.hour, minutes: selectedTime.minute));
//                 controller.selectDateTime(dateTime);
//               }
//             },
//             child: const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 'Select Time',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
///----------------------------------------------
// import 'package:flutter/material.dart';
//
// class DateTimeSelection {
//   final DateTime? selectedDate;
//   final TimeOfDay? selectedTime;
//
//   DateTimeSelection({this.selectedDate, this.selectedTime});
// }
//
// Future<DateTimeSelection?> showCalendar(BuildContext context) async {
//   DateTimeSelection? dateTimeSelection;
//   bool showCalendar = true;
//
//   await showDialog(
//     context: context,
//     builder: (context) => Dialog(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   // DateTime? selectedDate = await showDatePicker(
//                   //   context: context,
//                   //   initialDate: DateTime.now(),
//                   //   firstDate: DateTime(2022),
//                   //   lastDate: DateTime(2025),
//                   // );
//                   // Navigator.pop(context); // Close the dialog after selection
//
//                   // dateTimeSelection = DateTimeSelection(selectedDate: selectedDate);
//                 },
//                 child: const Text('Calendar'),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   // TimeOfDay? selectedTime = await showTimePicker(
//                   //   context: context,
//                   //   initialTime: TimeOfDay.now(),
//                   // );
//                   // Navigator.pop(context); // Close the dialog after selection
//                   // dateTimeSelection = DateTimeSelection(selectedTime: selectedTime);
//                 },
//                 child: Text('Time'),
//               ),
//             ],
//           ),
//           showCalendar ? CalendarDatePicker(initialDate: DateTime.now(), firstDate: DateTime(2021), lastDate: DateTime(2025), onDateChanged: (value) {
//
//           },) :
//           TimePickerDialog(initialTime: TimeOfDay.now(), )
//         ],
//       ),
//     ),
//   );
//
//   return dateTimeSelection;
// }

import 'package:flutter/material.dart';

class DateTimeSelection {
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  DateTimeSelection({this.selectedDate, this.selectedTime});
}

class DateTimeSelectionDialog extends StatefulWidget {
  const DateTimeSelectionDialog({super.key});

  @override
  _DateTimeSelectionDialogState createState() => _DateTimeSelectionDialogState();
}

class _DateTimeSelectionDialogState extends State<DateTimeSelectionDialog> {
  bool showCalendar = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    showCalendar = true;
                  });
                },
                child: const Text('Calendar'),
              ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    showCalendar = false;
                  });
                },
                child: Text('Time'),
              ),
            ],
          ),
          showCalendar
              ? CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2025),
            onDateChanged: (value) {
              // Handle date selection
            },
          )
              : TimePickerDialog(
            initialTime: TimeOfDay.now(),
            onEntryModeChanged: (v) {
              debugPrint("hello $v");
            },
            // onTimeSelected: (value) {
            //   // Handle time selection
            // },
          ),
        ],
      ),
    );
  }
}

// class TimePickerDialog extends StatelessWidget {
//   final TimeOfDay initialTime;
//   final Function(TimeOfDay) onTimeSelected;
//
//   const TimePickerDialog({Key? key, required this.initialTime, required this.onTimeSelected}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () async {
//         TimeOfDay? selectedTime = await showTimePicker(
//           context: context,
//           initialTime: initialTime,
//         );
//
//         if (selectedTime != null) {
//           onTimeSelected(selectedTime);
//           Navigator.pop(context); // Close the dialog after selection
//         }
//       },
//       child: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Text(
//           'Select Time',
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }

Future<DateTimeSelection?> showDateTimeSelectionDialog(BuildContext context) async {
  DateTimeSelection? dateTimeSelection;

  await showDialog(
    context: context,
    builder: (context) => DateTimeSelectionDialog(),
  );

  return dateTimeSelection;
}
