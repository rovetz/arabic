# frozen_string_literal: true

require "test_helper"

class Iso233Test < Minitest::Test
  def test_it_transliterates_iso233
    assert_equal "alʿrbyẗ", Arabic.t("العربية", to: :iso233)
    assert_equal "alšrq alʾdny", Arabic.t("الشرق الأدنى", to: :iso233)
  end

  def test_it_transliterates_numbers
    assert_equal "0123456789", Arabic.t("٠١٢٣٤٥٦٧۸٩", to: :iso233)
  end
end
