require "test_helper"

class ArabicTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Arabic::VERSION
  end

  def test_it_does_something_useful
    assert_equal "alerbyt", Arabic.t("العربية")
  end
end
