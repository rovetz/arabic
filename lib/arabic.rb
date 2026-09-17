# frozen_string_literal: true

require "arabic/version"
require "arabic/urdu"
require "arabic/iso233"
require "arabic/persian"

module Arabic
  CHARACTER_TABLE = {
    # Numbers
    "٠" => "0",
    "١" => "1",
    "٢" => "2",
    "٣" => "3",
    "٤" => "4",
    "٥" => "5",
    "٦" => "6",
    "٧" => "7",
    "۸" => "8",
    "٩" => "9",
    # Punctuation
    "،" => ",",
    "؛" => ";",
    "؟" => "?",
    # Consonants (Letters of the Alphabet)
    "ء" => "e",
    "آ" => "a",
    "أ" => "a",
    "ؤ" => "w",
    "إ" => "i",
    "ئ" => "y",
    "ا" => "a",
    "ب" => "b",
    "ة" => "t",
    "ت" => "t",
    "ث" => "th",
    "ج" => "j",
    "ح" => "h",
    "خ" => "kh",
    "د" => "d",
    "ذ" => "dh",
    "ر" => "r",
    "ز" => "z",
    "س" => "s",
    "ش" => "sh",
    "ص" => "s",
    "ض" => "d",
    "ط" => "t",
    "ظ" => "z",
    "ع" => "e",
    "غ" => "gh",
    "ف" => "f",
    "ق" => "q",
    "ك" => "k",
    "ل" => "l",
    "م" => "m",
    "ن" => "n",
    "ه" => "h",
    "و" => "w",
    "ى" => "a",
    "ي" => "y",
    # Vowels and Diphthongs
    "َ" => "a",
    "ُ" => "u",
    "ِ" => "i"
  }.freeze

  REGEXP = Regexp.union(CHARACTER_TABLE.keys).freeze

  SCHEMES = {
    arabic: [CHARACTER_TABLE, REGEXP].freeze,
    urdu: [Urdu::CHARACTER_TABLE, Urdu::REGEXP].freeze,
    iso233: [Iso233::CHARACTER_TABLE, Iso233::REGEXP].freeze,
    persian: [Persian::CHARACTER_TABLE, Persian::REGEXP].freeze
  }.freeze

  class << self
    # Transliterates Arabic, Urdu, Persian, and related text into Latin script.
    #
    # @param string [String, #to_s] The text to transliterate.
    # @param to [Symbol, String] The transliteration scheme (:arabic, :urdu, :iso233, :persian).
    # @return [String] The transliterated Latin script string.
    # @raise [ArgumentError] If the given transliteration scheme is unknown.
    #
    # @example Default Arabic transliteration
    #   Arabic.transliterate("العربية") #=> "alerbyt"
    #
    # @example Urdu transliteration using short alias .t
    #   Arabic.t("اردو", :urdu) #=> "ardv"
    def transliterate(string = "", to = :arabic)
      scheme = SCHEMES[to.to_s.downcase.to_sym]
      unless scheme
        available = SCHEMES.keys.map(&:inspect).join(", ")
        raise ArgumentError, "Unknown transliteration scheme: #{to.inspect}. Available schemes: #{available}"
      end

      table, regexp = scheme
      string.to_s.gsub(regexp, table)
    end
    alias t transliterate
  end
end
