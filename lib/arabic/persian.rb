# frozen_string_literal: true

module Arabic
  module Persian
    CHARACTER_TABLE = {
      # Numbers (Persian / Eastern Arabic-Indic digits)
      "۰" => "0",
      "۱" => "1",
      "۲" => "2",
      "۳" => "3",
      "۴" => "4",
      "۵" => "5",
      "۶" => "6",
      "۷" => "7",
      "۸" => "8",
      "۹" => "9",
      # Punctuation
      "،" => ",",
      "؛" => ";",
      "؟" => "?",
      # Consonants (Persian alphabet - 32 letters)
      "ا" => "a",
      "آ" => "aa",
      "ب" => "b",
      "پ" => "p",
      "ت" => "t",
      "ث" => "s",
      "ج" => "j",
      "چ" => "ch",
      "ح" => "h",
      "خ" => "kh",
      "د" => "d",
      "ذ" => "z",
      "ر" => "r",
      "ز" => "z",
      "ژ" => "zh",
      "س" => "s",
      "ش" => "sh",
      "ص" => "s",
      "ض" => "z",
      "ط" => "t",
      "ظ" => "z",
      "ع" => "‘",
      "غ" => "gh",
      "ف" => "f",
      "ق" => "q",
      "ک" => "k",
      "ك" => "k",
      "گ" => "g",
      "ل" => "l",
      "م" => "m",
      "ن" => "n",
      "و" => "v",
      "ه" => "h",
      "ی" => "y",
      "ي" => "y",
      "ء" => "'",
      "ة" => "t",
      "أ" => "a",
      "إ" => "e",
      "ؤ" => "o",
      "ئ" => "y",
      "ى" => "a"
    }.freeze

    REGEXP = Regexp.union(CHARACTER_TABLE.keys).freeze
  end
end

Persian = Arabic::Persian unless defined?(Persian)
