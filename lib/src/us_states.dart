import 'package:us_states/src/states.dart';
import 'package:collection/collection.dart';

class USStates {
  /// Takes case-insensitive name of state and returns abbreviation.
  ///
  /// If abbreviation is not found, null is returned.
  static String? getAbbreviation(String stateName) {
    final name = stateName.trim().toLowerCase();

    return states.keys
        .firstWhereOrNull((key) => states[key]?.toLowerCase() == name);
  }

  /// Takes case-insensitive abbreviation of state and returns name.
  ///
  /// If name is not found, null is returned.
  static String? getName(String stateAbbreviation) {
    final abbrev = stateAbbreviation.toUpperCase();

    return states[abbrev];
  }

  /// Returns list of all abbreviations.
  static List<String> getAllAbbreviations() {
    return states.keys.toList();
  }

  /// Returns list of all names.
  static List<String> getAllNames() {
    return states.values.toList();
  }

  /// Returns map of Abbreviations as Keys and Names as Values.
  static Map<String, String> getAbbreviationMap() {
    return states;
  }

  /// Returns map of Names as Keys and Abbreviations as Values.
  static Map<String, String> getNameMap() {
    var nameMap = Map<String, String>();

    states.forEach((key, value) {
      nameMap[value] = key;
    });

    return nameMap;
  }
}
