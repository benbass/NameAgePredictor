// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "country_dropDown_hintText":
            MessageLookupByLibrary.simpleMessage("Pays"),
        "responsePage_TrayAgainDifferent": MessageLookupByLibrary.simpleMessage(
            "Éssaie à nouveau avec un autre nom (ou pays)"),
        "responsePage_in": MessageLookupByLibrary.simpleMessage("au ou en"),
        "responsePage_is": MessageLookupByLibrary.simpleMessage("a"),
        "responsePage_notFound":
            MessageLookupByLibrary.simpleMessage("n\'a pas été trouvé"),
        "responsePage_tryAgain":
            MessageLookupByLibrary.simpleMessage("Réessayer?"),
        "responsePage_yearsOld": MessageLookupByLibrary.simpleMessage("ans"),
        "searchButton_send": MessageLookupByLibrary.simpleMessage("ENVOYER"),
        "searchField_hintText":
            MessageLookupByLibrary.simpleMessage("Saisis un prénom..."),
        "searchField_invalidValue": MessageLookupByLibrary.simpleMessage(
            "Le terme de recherche doit pas être vide et ne peut contenir que des lettres, des traits d\'union et des espaces."),
        "searchForm_introText": MessageLookupByLibrary.simpleMessage(
            "Détermine l\'âge estimé pour un prénom spécifique, éventuellement pour un pays spécifique.")
      };
}
