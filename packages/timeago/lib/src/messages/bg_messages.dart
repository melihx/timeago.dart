import 'package:timeago/src/messages/lookupmessages.dart';

/// Bulgarian messages
class BgMessages implements LookupMessages {
  @override
  String prefixAgo() => 'преди';
  @override
  String prefixFromNow() => 'след';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'току що';
  @override
  String aboutAMinute(int minutes) => 'една минута';
  @override
  String minutes(int minutes) => '$minutes ${_getMinutesForm(minutes)}';
  @override
  String aboutAnHour(int minutes) => 'един час';
  @override
  String hours(int hours) => '$hours ${_getHoursForm(hours)}';
  @override
  String aDay(int hours) => 'един ден';
  @override
  String days(int days) => '$days ${_getDaysForm(days)}';
  @override
  String aboutAMonth(int days) => 'един месец';
  @override
  String months(int months) => '$months ${_getMonthsForm(months)}';
  @override
  String aboutAYear(int year) => 'една година';
  @override
  String years(int years) => '$years ${_getYearsForm(years)}';
  @override
  String wordSeparator() => ' ';

  // Helper methods for Bulgarian grammatical forms
  String _getMinutesForm(int minutes) {
    if (minutes == 1) return 'минута';
    return 'минути';
  }

  String _getHoursForm(int hours) {
    if (hours == 1) return 'час';
    if (hours >= 2 && hours <= 4) return 'часа';
    return 'часа';
  }

  String _getDaysForm(int days) {
    if (days == 1) return 'ден';
    return 'дни';
  }

  String _getMonthsForm(int months) {
    if (months == 1) return 'месец';
    if (months >= 2 && months <= 4) return 'месеца';
    return 'месеца';
  }

  String _getYearsForm(int years) {
    if (years == 1) return 'година';
    if (years >= 2 && years <= 4) return 'години';
    return 'години';
  }
}

/// Bulgarian short Messages
class BgShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'току що';
  @override
  String aboutAMinute(int minutes) => '1 мин';
  @override
  String minutes(int minutes) => '$minutes мин';
  @override
  String aboutAnHour(int minutes) => '~1 ч';
  @override
  String hours(int hours) => '$hours ч';
  @override
  String aDay(int hours) => '~1 д';
  @override
  String days(int days) => '$days д';
  @override
  String aboutAMonth(int days) => '~1 м';
  @override
  String months(int months) => '$months м';
  @override
  String aboutAYear(int year) => '~1 г';
  @override
  String years(int years) => '$years г';
  @override
  String wordSeparator() => ' ';
}
