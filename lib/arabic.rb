require "arabic/version"
require "arabic/urdu"
require "arabic/iso233"

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
    "و‎" => "u",
    # Vowels and Diphthongs
    "َ‎"  => "a",
    "ُ"  => "u",
    "ِ‎"  => "i"
  }

  class << self
    def transliterate(string="", to=:arabic)
      character_table = Module.const_get(to.to_s.capitalize)::CHARACTER_TABLE
      string.to_s.gsub(/#{Regexp.union(character_table.keys).source}/i, character_table)
    end
    alias_method :t, :transliterate
  end

end
