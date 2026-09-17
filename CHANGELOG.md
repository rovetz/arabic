# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- CLI executable `exe/arabic` supporting direct arguments, files, piped STDIN, and scheme flag (`-s`).
- Integration tests for CLI arguments, flags, and STDIN input.
- GitHub Actions CI workflow for modern Ruby versions on `main` branch with experimental `head`.
- Automated GitHub Actions release workflow for building and publishing gem on git tag push.
- Precompiled and cached regular expressions for character tables for improved performance.
- Case-insensitive scheme resolution (e.g. `:urdu`, `"urdu"`, `:URDU`).
- Informative `ArgumentError` when an unknown transliteration scheme is specified.
- Standard gem metadata URIs (`source_code_uri`, `changelog_uri`, `bug_tracker_uri`).
- RuboCop code style checks integrated into default `rake` task.
- SimpleCov code test coverage tracking with 100% line coverage.
- Unit tests for edge cases (nil/empty strings, scheme normalization, error handling).

### Changed
- Update development dependencies (rubocop, rake, rdoc, irb, json, minitest).
- Namespaced `Urdu`, `Iso233`, and `Persian` modules under `Arabic` (`Arabic::Urdu`, `Arabic::Iso233`, `Arabic::Persian`) with backwards-compatible top-level aliases.
- Set minimum required Ruby version to `>= 3.3.0` in gemspec.
- Untrack `Gemfile.lock` and add to `.gitignore` following gem development best practices.
- Update copyright year to 2018-2026 in `LICENSE.txt`.

### Removed
- Legacy `.travis.yml` configuration.
- Unused `exe` executable configuration from gemspec.

## [0.1.7] - 2025-04-03

### Changed
- Update gem dependencies and bump version.

## [0.1.6] - 2018-09-13

### Added
- ISO 233 transliteration scheme (`:iso233`).
- Additional test cases for Arabic phrases.

## [0.1.5] - 2018-09-13

### Changed
- Refactor language architecture: separate Urdu transliteration into a dedicated module and file.

## [0.1.4] - 2018-09-05

### Changed
- Standardize character output to use ASCII characters.

## [0.1.3] - 2018-08-17

### Added
- Additional Urdu characters support.
- Additional test coverage for Urdu transliteration.

### Fixed
- Fix Urdu numerals and character mappings.

## [0.1.2] - 2018-08-16

### Added
- Additional Urdu symbols (including 'ئ').

## [0.1.1] - 2018-08-16

### Added
- Initial Urdu transliteration support.

## [0.1.0] - 2018-04-04

### Added
- Initial release.
- Core Arabic transliteration to Roman (Latin) script.
- Support for Arabic numerals, punctuation, consonants, and vowels.
