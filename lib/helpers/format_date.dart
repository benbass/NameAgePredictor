import 'package:intl/intl.dart';

import '../core/globals.dart';

String formattedDate(int nowAsInteger){
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(nowAsInteger);
  return DateFormat.yMMMMd(defaultLocale).add_Hm().format(dateTime);
}
