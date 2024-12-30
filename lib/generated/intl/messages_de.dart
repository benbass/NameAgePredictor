// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "country_dropDown_hintText":
            MessageLookupByLibrary.simpleMessage("Länder"),
        "responsePage_TrayAgainDifferent": MessageLookupByLibrary.simpleMessage(
            "Versuche es nochmal mit einem anderen Namen."),
        "responsePage_in": MessageLookupByLibrary.simpleMessage("in"),
        "responsePage_is": MessageLookupByLibrary.simpleMessage("ist"),
        "responsePage_notFound":
            MessageLookupByLibrary.simpleMessage("wurde nicht gefunden"),
        "responsePage_tryAgain":
            MessageLookupByLibrary.simpleMessage("Neuer Versuch?"),
        "responsePage_yearsOld":
            MessageLookupByLibrary.simpleMessage("Jahre alt"),
        "searchButton_send": MessageLookupByLibrary.simpleMessage("SENDEN"),
        "searchField_hintText":
            MessageLookupByLibrary.simpleMessage("Vorname eingeben..."),
        "searchField_invalidValue": MessageLookupByLibrary.simpleMessage(
            "Der Suchbegriff kann nicht leer sein und darf nur Buchstaben, Bindestriche und Leerzeichen enthalten."),
        "searchForm_introText": MessageLookupByLibrary.simpleMessage(
            "Ermittle die Altersschätzung für einen bestimmten Vornamen, optional für ein bestimmtes Land.")
      };
}
