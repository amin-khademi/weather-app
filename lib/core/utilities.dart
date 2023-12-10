import 'package:weather_app/core/theme.dart';
import 'package:intl/intl.dart';

class Utilities {
   Map<dynamic, String> imageMap = {
    "Partially cloudy": AppImages.nightRain,
    "Overcast": AppImages.sunSlowRain,
    "Clear": AppImages.wind,
    "null": AppImages.nightStarRain,
  };

  static String formatDate(DateTime date) {
    String formattedDate = DateFormat("EEEE d MM").format(date);
    return formattedDate;
  }

  static String extractDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat("d").format(dateTime);
    return formattedDate;
  }

  static String extractDay(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat("EEEE").format(dateTime);
    String abbreviateDay = formattedDate.substring(0, 3);
    return abbreviateDay;
  }

  static String formatTime(String time) {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime dateTime = DateTime.parse("2023-08-08T$time");
    String timeIn12HourFormat = dateFormat.format(dateTime);
    return timeIn12HourFormat; //3:30pm
  }

  static String currentTime() {
    DateFormat dateFormat = DateFormat("hh:mm a");
    DateTime now = DateTime.now();
    String time = dateFormat.format(now);
    return time;
  }

  static String formateTimeWithoutAmPm(String time) {
    DateFormat dateFormat = DateFormat("hh:mm");
    DateTime dateTime = DateTime.parse("2023-08-08T$time");
    String timeIn24HourFormat = dateFormat.format(dateTime);
    return timeIn24HourFormat;
  } //15:30

  static bool checkTime(String time) {
    DateFormat dateFormat = DateFormat("hh a");
    DateTime dateTime = DateTime.parse("2023-08-08T$time");
    DateTime now = DateTime.now();
    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}
