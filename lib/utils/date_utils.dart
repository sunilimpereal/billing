import 'package:intl/intl.dart';

class DateUtils {
  // Function to format a DateTime object as a string
  static String formatDateTime(DateTime dateTime, String format) {
    final DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(dateTime);
  }

  // Function to get the current date and time
  static DateTime getCurrentDateTime() {
    return DateTime.now();
  }

  // Function to add or subtract days from a DateTime object
  static DateTime addDays(DateTime dateTime, int days) {
    return dateTime.add(Duration(days: days));
  }

  // Function to check if a DateTime is today
  static bool isToday(DateTime dateTime) {
    final today = DateTime.now();
    return dateTime.year == today.year &&
        dateTime.month == today.month &&
        dateTime.day == today.day;
  }

  // Function to calculate the difference in days between two DateTimes
  static int daysDifference(DateTime date1, DateTime date2) {
    return date1.difference(date2).inDays;
  }

  // Function to format a duration as a string
  static String formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$hours:$minutes:$seconds';
  }

  // Function to parse a date string into a DateTime object
  static DateTime parseDate(String dateStr, String format) {
    final dateFormat = DateFormat(format);
    return dateFormat.parse(dateStr);
  }

  // Function to check if a DateTime is in the past
  static bool isPast(DateTime dateTime) {
    return dateTime.isBefore(DateTime.now());
  }

  // Function to check if a DateTime is in the future
  static bool isFuture(DateTime dateTime) {
    return dateTime.isAfter(DateTime.now());
  }

  // Add more date and time utility functions as needed
}
