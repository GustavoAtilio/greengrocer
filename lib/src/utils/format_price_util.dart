import 'package:intl/intl.dart';

String priceToCurrency(double price) {
  NumberFormat number = NumberFormat.simpleCurrency(locale: 'pt_BR');
  return number.format(price);
}
