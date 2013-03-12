require 'test/unit'
require_relative 'piglatin_converter'

class TestAdd < Test::Unit::TestCase
  
  def test_word_that_starts_with_a_vowel
  	assert_equal 'orangeway', PiglatinConverter.convert("orange")
  end

  def test_word_that_has_one_consanant_before_vowel
  	assert_equal "igpay", PiglatinConverter.convert("pig")
  end

  def test_word_that_has_two_consanants_before_vowel
  	assert_equal "oeshay", PiglatinConverter.convert("shoe")
  end

  def test_word_that_has_a_group_of_consanants_before_vowel
  	assert_equal "ingstray", PiglatinConverter.convert("string")
  end

  def test_word_that_has_first_letter_upper_case
  	assert_equal "ingstray", PiglatinConverter.convert("String")
  end

  def test_word_that_has_any_upper_case
  	assert_equal "ingstray", PiglatinConverter.convert("sTring")
  end

  def test_word_that_is_an_empty_string
  	assert_equal "", PiglatinConverter.convert("")
  end

  def test_nil
  	assert_equal nil, PiglatinConverter.convert(nil)
  end

  def test_alphabet_only
  	assert_equal true, PiglatinConverter.convert("pig")
  end

  def test_numbers_only
  	assert_equal false, PiglatinConverter.convert(1)
  end

end