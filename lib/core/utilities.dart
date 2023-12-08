import 'package:weather_app/core/theme.dart';
import 'package:intl/intl.dart';

class Utilities {
  static Map<dynamic, String> imageMap = {
    "Partially cloudy": AppImages.nightRain,
    "Overcast": AppImages.sunSlowRain,
    "Clear": AppImages.wind,
    "null": AppImages.nightStatRain,
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
}
