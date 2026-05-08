import 'package:intl/intl.dart';

class MoneyFormatters {
  MoneyFormatters._();

  static final usd = NumberFormat.simpleCurrency(name: 'USD');
}
