require "arabic/version"

module Arabic
  CHARACTER_TABLE = {
    :arabic => {
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
      "و‎" => "u",
      # Vowels and Diphthongs
      "َ‎"  => "a",
      "ُ"  => "u",
      "ِ‎"  => "i"
    },
    :urdu => {
      # Numbers
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
      # Consonants (Letters of the Alphabet)
      "ا" => "a",
      "آ" => "ā",
      "ب" => "b",
      "پ" => "p",
      "ت" => "t",
      "ٹ" => "ṭ",
      "ث" => "s",
      "ج" => "j",
      "چ" => "c",
      "ح" => "ḥ",
      "خ" => "kh",
      "د" => "d",
      "ڈ" => "ḍ",
      "ذ" => "z",
      "ر" => "r",
      "ڑ" => "ṛ",
      "ز" => "z",
      "ژ" => "zh",
      "س" => "s",
      "ش" => "sh",
      "ص" => "ṣ",
      "ض" => "ẓ",
      "ط" => "̤t",
      "ظ" => "̤z",
      "ع" => "‘",
      "غ" => "gh",
      "ف" => "f",
      "ق" => "q",
      "ک" => "k",
      "گ" => "g",
      "ل" => "l",
      "م" => "m",
      "ن" => "n",
      "ں" => "n",
      "و" => "v",
      "ه" => "h",
      "ﮨ" => "h",
      "ﮩ" => "h",
      "ہ" => "h",
      "ھ" => "h",
      "ء" => "'",
      "ة" => "t",
      "ی" => "i",
      "ى" => "y",
      "ئ" => "y",
      "ے" => "e",
      "ۂ" => "a",
      "ؤ" => "o"
    }
  }

  class << self
    def transliterate(string="", lang=:arabic)
      string.to_s.gsub(Regexp.union(CHARACTER_TABLE[lang].keys.map(&:to_s)), CHARACTER_TABLE[lang])
    end
    alias_method :t, :transliterate
  end

end
