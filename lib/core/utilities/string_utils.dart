extension EmailValidator on String {
  bool isValidEmail() => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);
}

extension StringExtension on String {
  String capitalize() => "${this[0].toUpperCase()}${substring(1)}";
  String get capitalizeFirstofEach => replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.capitalize())
      .join(" ");
}

class StringUtils {
  static String greetingMessage() {
    final timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'Good Morning';
    } else if ((timeNow > 12) && (timeNow <= 15)) {
      return 'Good Afternoon';
    } else if ((timeNow > 15) && (timeNow < 21)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  static String statusTitle() {
    final timeNow = DateTime.now().hour;

    if (timeNow >= 16 && timeNow <= 17) {
      return 'We are closing soon';
    } else if ((timeNow >= 9) && timeNow <= 18) {
      return 'We are Open';
    } else if ((timeNow >= 6) && timeNow < 9) {
      return 'We are opening soon';
    }
    return 'We are currently closed!';
  }
}
