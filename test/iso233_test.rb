require "test_helper"

class Iso233Test < Minitest::Test
  def test_it_transliterates_urdu
    assert_equal "ʾrdw", Arabic.t("اردو", :iso233)
  end

  def test_it_transliterates_numbers
    assert_equal "0123456789", Arabic.t("٠١٢٣٤٥٦٧۸٩")
  end
end
