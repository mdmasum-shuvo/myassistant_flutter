import 'package:intl/intl.dart';

String formatDateTime(String? dateTimeString) {
  if (dateTimeString == null) {
    return "Invalid date";
  }

  try {
    // Parse the input string into a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Get the current date
    DateTime now = DateTime.now();

    // Check if the date is tomorrow
    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day + 1) {
      // If it's tomorrow, return "Tomorrow at time"
      return "Tomorrow at ${DateFormat.jm().format(dateTime)}";
    } else {
      // If it's not tomorrow, return "Day, Month Name Year"
      return DateFormat('EEEE, MMMM d y').format(dateTime);
    }
  } catch (e) {
    // Handle parsing errors
    return "Invalid date";
  }
}