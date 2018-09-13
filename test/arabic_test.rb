require "test_helper"

class ArabicTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Arabic::VERSION
  end

  def test_it_transliterates_arabic
    assert_equal "alerbyt", Arabic.t("العربية")
    assert_equal "alshrq aladna", Arabic.t("الشرق الأدنى")
  end

  def test_it_transliterates_numbers
    assert_equal "0123456789", Arabic.t("٠١٢٣٤٥٦٧۸٩")
  end
end
