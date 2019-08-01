import 'package:flutter_test/flutter_test.dart';

import 'package:us_states/us_states.dart';

void main() {
  group("getAbbreviation", () {
    test("correctly returns an abbreviation", (){
      /// Iowhuuuuuuuuuuut!
      final abbr1 = USStates.getAbbreviation("Iowa");
      final abbr2 = USStates.getAbbreviation("IowA");
      final abbr3 = USStates.getAbbreviation("IOWA");
      final abbr4 = USStates.getAbbreviation("iowa");

      expect(abbr1, "IA");
      expect(abbr2, "IA");
      expect(abbr3, "IA");
      expect(abbr4, "IA");
    });

    test("correctly returns an empty string", (){
      /// Oh, Nebraska... you spell good and stuff.
      final abbr1 = USStates.getAbbreviation("Derbraska");
      final abbr2 = USStates.getAbbreviation("Neborinska");
      final abbr3 = USStates.getAbbreviation("NeblahsKA");
      final abbr4 = USStates.getAbbreviation("Nebras");

      expect(abbr1, "");
      expect(abbr2, "");
      expect(abbr3, "");
      expect(abbr4, "");
    });
  });

  group("getName", (){
    test("correctly returns state name", () {
      /// Apples and Cherries and Stuff.
      final name1 = USStates.getName("WA");
      final name2 = USStates.getName("wa");
      final name3 = USStates.getName("wA");
      final name4 = USStates.getName("Wa");

      expect(name1, "Washington");
      expect(name2, "Washington");
      expect(name3, "Washington");
      expect(name4, "Washington");
    });

    test("correctly returns empty string", () {
      /// Cuz Florida.
      final name1 = USStates.getName("F1");
      final name2 = USStates.getName("f L");
      final name3 = USStates.getName("Rida");
      final name4 = USStates.getName("111-111-1234");


      expect(name1, "");
      expect(name2, "");
      expect(name3, "");
      expect(name4, "");
    });
  });

  group("getAllAbbreviations", () {
    test("should be a list of abbreviations", () {
      /// Just spot checking.
      final abbrevs = USStates.getAllAbbreviations();

      expect(abbrevs.first, "AK");
      expect(abbrevs.last, "WY");
    });
  });

  group("getAllNames", () {
    test("should be a list of state names", () {
      /// Just spot checking.
      final abbrevs = USStates.getAllNames();

      expect(abbrevs.first, "Alaska");
      expect(abbrevs.last, "Wyoming");
    });
  });

  group("getAbbreviationMap", () {
    test("should be correct", () {
      /// Just spot checking.
      final abbrevs = USStates.getAbbreviationMap();

      expect(abbrevs["IA"], "Iowa");
      expect(abbrevs["PR"], "Puerto Rico");
      expect(abbrevs["Nebraska"], null);
    });
  });

  group("getNameMap", () {
    test("should be correct", () {
      /// Just spot checking.
      final abbrevs = USStates.getNameMap();

      expect(abbrevs["Iowa"], "IA");
      expect(abbrevs["Puerto Rico"], "PR");
      expect(abbrevs["NE"], null);
    });
  });
}
