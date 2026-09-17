# Arabic

[![Ruby](https://github.com/rovetz/arabic/actions/workflows/ruby.yml/badge.svg)](https://github.com/rovetz/arabic/actions/workflows/ruby.yml)
[![Gem Version](https://badge.fury.io/rb/arabic.svg)](https://badge.fury.io/rb/arabic)

Romanization of Arabic. It transliterates Arabic text to the Roman (Latin) script.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "arabic"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arabic

## Usage

```ruby
require "arabic"

# Default Arabic transliteration
Arabic.transliterate("العربية")
# => "alerbyt"

# Short alias .t
Arabic.t("العربية")
# => "alerbyt"

# Urdu scheme
Arabic.t("اردو", :urdu)
# => "ardv"

# ISO 233 scheme
Arabic.t("اردو", :iso233)
# => "ʾrdw"

# Numbers and punctuation
Arabic.t("٠١٢٣٤٥٦٧۸٩")
# => "0123456789"
```

### Command Line Interface (CLI)

You can also use `arabic` directly from the command line:

```bash
# Direct argument
$ arabic "العربية"
alerbyt

# Piped input (STDIN)
$ echo "العربية" | arabic
alerbyt

# File input
$ arabic text.txt

# Select transliteration scheme (default, urdu, iso233)
$ arabic -s urdu "اردو"
ardv

$ arabic -s iso233 "كتاب"
ktʾb
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rake` to run tests and code style checks (RuboCop). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rovetz/arabic. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Arabic project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rovetz/arabic/blob/main/CODE_OF_CONDUCT.md).
