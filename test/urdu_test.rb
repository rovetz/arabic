# frozen_string_literal: true

require "test_helper"

class UrduTest < Minitest::Test
  def test_it_transliterates_urdu
    assert_equal "alwrdyť", Arabic.t("الوردیات", to: :urdu)
    assert_equal "alshrq aladna", Arabic.t("الشرق الأدنى", to: :urdu)
  end

  def test_it_transliterates_numbers
    assert_equal "0123456789", Arabic.t("۰۱۲۳۴۵۶۷۸۹", to: :urdu)
  end
end
