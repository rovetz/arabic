# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- GitHub Actions CI workflow for modern Ruby versions (3.1, 3.2, 3.3, 3.4) on `main` branch.
- Precompiled and cached regular expressions for character tables for improved performance.
- Case-insensitive scheme resolution (e.g. `:urdu`, `"urdu"`, `:URDU`).
- Informative `ArgumentError` when an unknown transliteration scheme is specified.
- Standard gem metadata URIs (`source_code_uri`, `changelog_uri`, `bug_tracker_uri`).
- RuboCop code style checks integrated into default `rake` task.
- Unit tests for edge cases (nil/empty strings, scheme normalization, error handling).

### Changed
- Namespaced `Urdu`, `Iso233`, and `Persian` modules under `Arabic` (`Arabic::Urdu`, `Arabic::Iso233`, `Arabic::Persian`) with backwards-compatible top-level aliases.
- Set minimum required Ruby version to `>= 3.1.0` in gemspec.

### Removed
- Legacy `.travis.yml` configuration.
- Unused `exe` executable configuration from gemspec.

## [0.1.7]

### Added
- ISO 233 transliteration scheme support.
- Urdu transliteration scheme support.
