# frozen_string_literal: true

module Arabic
  module Iso233
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
      "ء" => "ˌ",
      "ٔ◌" => "ˈ",
      "ٕ◌" => "",
      "ا" => "ʾ",
      "ب" => "b",
      "ت" => "t",
      "ث" => "ṯ",
      "ج" => "ǧ",
      "ح" => "ḥ",
      "خ" => "ẖ",
      "د" => "d",
      "ذ" => "ḏ",
      "ر" => "r",
      "ز" => "z",
      "س" => "s",
      "ش" => "š",
      "ص" => "ṣ",
      "ض" => "ḍ",
      "ط" => "ṭ",
      "ظ" => "ẓ",
      "ع" => "ʿ",
      "غ" => "ġ",
      "ف" => "f",
      "ق" => "q",
      "ك" => "k",
      "ل" => "l",
      "م" => "m",
      "ن" => "n",
      "ه" => "h",
      "ة" => "ẗ",
      "و" => "w",
      "ي" => "y",
      "ى" => "ỳ"
    }.freeze

    REGEXP = Regexp.union(CHARACTER_TABLE.keys).freeze
  end
end

Iso233 = Arabic::Iso233 unless defined?(Iso233)
