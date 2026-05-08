import 'package:intl/intl.dart';

class DateFormatters {
  DateFormatters._();

  static final shortDate = DateFormat.yMMMd();
  static final shortDateTime = DateFormat.yMMMd().add_jm();
  static final fileStamp = DateFormat('yyyyMMdd_HHmmss');
}
