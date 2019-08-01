# us_states

Simple library to deal with state names and abbreviations.

[![CircleCI](https://circleci.com/gh/Snapraise/us_states.svg?style=svg)](https://circleci.com/gh/Snapraise/us_states)

## Installation

Add the following to your pubspec.yml:
```yaml
dependencies:
    us_states: ^1.0.0

```

## Usage

### Note 

- All methods that take a string are case-insensitive. No need to adjust case before passing string into a method.

### Get a state's name from an abbreviation

```dart
USStates.getName("IA");
// returns Iowa
```

Returns empty string if not found.

### Get a state's abbreviation from name

```dart
USStates.getAbbreviation("Iowa");
// returns IA
```

Returns empty string if not found.

### Get a list of all state names

```dart
USStates.getAllNames();
```

### Get a list of all state abbreviations

```dart
USStates.getAllAbbreviations();
```

### Get a map with state abbreviations as keys and names as values

```dart
USStates.getAbbreviationMap();
```

### Get a map with state names as keys and abbreviations as values

```dart
USStates.getAbbreviationMap();
```