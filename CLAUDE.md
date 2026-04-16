# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Dart library (`us_states`) for converting between US state names and abbreviations. Published as a Dart/Flutter package. Includes 50 states plus DC, territories (PR, GU, AS, VI).

## Commands

- **Run tests:** `flutter test`
- **Run a single test file:** `flutter test test/us_states_test.dart`
- **Get dependencies:** `flutter pub get`

## Architecture

- `lib/us_states.dart` — Library entry point, re-exports `src/us_states.dart`
- `lib/src/us_states.dart` — `USStates` class with static methods (getName, getAbbreviation, getAllNames, getAllAbbreviations, getAbbreviationMap, getNameMap)
- `lib/src/states.dart` — Data: `final states` map of abbreviation → name
- All string inputs are case-insensitive (handled via toLowerCase/toUpperCase)
- Lookup methods return `String?` (null when not found) — null safety is important here
- Uses `collection` package for `firstWhereOrNull`

## CI

CircleCI runs `flutter test` on the `cirrusci/flutter` Docker image.
