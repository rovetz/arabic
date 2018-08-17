require "test_helper"

class ArabicTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Arabic::VERSION
  end

  def test_it_transliterates_arabic
    assert_equal "alerbyt", Arabic.t("العربية")
  end

  def test_it_transliterates_numbers
    assert_equal "1996", Arabic.t("١٩٩٦")
  end

  def test_it_transliterates_urdu
    assert_equal "ardv", Arabic.t("اردو", :urdu)
  end

  def test_it_transliterates_urdu_numbers
    assert_equal "1996", Arabic.t("۱۹۹۶", :urdu)
  end
end
