# frozen_string_literal: true

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

  def test_it_transliterates_with_default_scheme
    assert_equal "alerbyt", Arabic.t("العربية")
  end

  def test_it_handles_nil_and_empty_string
    assert_equal "", Arabic.t(nil)
    assert_equal "", Arabic.t("")
  end

  def test_it_supports_case_insensitive_scheme_names
    assert_equal "alerbyt", Arabic.t("العربية", "arabic")
    assert_equal "alerbyt", Arabic.t("العربية", :ARABIC)
  end

  def test_it_raises_argument_error_for_unknown_scheme
    error = assert_raises(ArgumentError) do
      Arabic.t("العربية", :unknown)
    end
    assert_match(/Unknown transliteration scheme/, error.message)
  end

  def test_it_namespaces_modules_under_arabic_with_backwards_compatibility
    assert_equal Arabic::Urdu, ::Urdu
    assert_equal Arabic::Iso233, ::Iso233
    assert_equal Arabic::Persian, ::Persian
  end

  def test_cli_argument
    out, status = Open3.capture2("bundle exec exe/arabic 'العربية'")

    assert_predicate status, :success?
    assert_equal "alerbyt\n", out
  end

  def test_cli_scheme_argument
    out, status = Open3.capture2("bundle exec exe/arabic -s urdu 'اردو'")

    assert_predicate status, :success?
    assert_equal "ardv\n", out
  end

  def test_cli_stdin
    out, status = Open3.capture2("bundle exec exe/arabic", stdin_data: "العربية\n")

    assert_predicate status, :success?
    assert_equal "alerbyt\n", out
  end

  def test_cli_version
    out, status = Open3.capture2("bundle exec exe/arabic --version")

    assert_predicate status, :success?
    assert_equal "arabic #{Arabic::VERSION}\n", out
  end

  def test_cli_help
    out, status = Open3.capture2("bundle exec exe/arabic --help")

    assert_predicate status, :success?
    assert_includes out, "Usage: arabic"
  end
end
