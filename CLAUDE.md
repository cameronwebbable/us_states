# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Pure Dart library (`us_states`) for converting between US state names and abbreviations. Published on pub.dev. Includes 50 states plus DC, territories (PR, GU, AS, VI). Requires Dart SDK >=3.0.0.

## Commands

- **Run tests:** `dart test`
- **Run a single test file:** `dart test test/us_states_test.dart`
- **Get dependencies:** `dart pub get`
- **Analyze:** `dart analyze`
- **Publish dry-run:** `dart pub publish --dry-run`

## Architecture

- `lib/us_states.dart` — Library entry point, re-exports `src/us_states.dart`
- `lib/src/us_states.dart` — `USStates` class with static methods (getName, getAbbreviation, getAllNames, getAllAbbreviations, getAbbreviationMap, getNameMap)
- `lib/src/states.dart` — Data: `const states` map of abbreviation → name
- All string inputs are case-insensitive (handled via toLowerCase/toUpperCase)
- Lookup methods return `String?` (null when not found) — null safety is important here
- `getAbbreviationMap()` returns an `UnmodifiableMapView` to protect internal state
- Uses `collection` package for `firstWhereOrNull`

## CI

CircleCI runs `dart analyze` and `dart test` on the `dart:stable` Docker image.
