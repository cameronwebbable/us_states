# us_states

Simple Dart library to deal with state names and abbreviations.

[![CircleCI](https://circleci.com/gh/cameronwebbable/us_states.svg?style=svg)](https://circleci.com/gh/cameronwebbable/us_states)

## Installation

Add the following to `dependencies` section in your pubspec.yml:
```yaml
  us_states: ^1.1.5
```

## Usage

### Note 

- All methods that take a string are case-insensitive. No need to adjust case before passing string into a method.

### Get a state's name from an abbreviation

Returns empty string if not found.
```dart
USStates.getName("IA");
// returns "Iowa"
```

### Get a state's abbreviation from name

Returns empty string if not found.
```dart
USStates.getAbbreviation("Iowa");
// returns "IA"
```

### Get a list of all state names

```dart
USStates.getAllNames();
// returns ["Alaska", "Alabama", ...]
```

### Get a list of all state abbreviations

```dart
USStates.getAllAbbreviations();
// returns ["AK", "AL", ...]
```

### Get a map with state abbreviations as keys and names as values

```dart
USStates.getAbbreviationMap();
// returns {"AK": "Alaska", "AL": "Alabama", ...}
```

### Get a map with state names as keys and abbreviations as values

```dart
USStates.getNameMap();
// returns {"Alaska": "AK", "Alabama": "AL", ...}
```
