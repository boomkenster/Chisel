gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "chisel"

class ChiselTest < Minitest::Test

  def test_it_runs
    assert true
  end

  def test_parse_method_exist
    parser = Chisel.new
    assert true, parser.parse("n")
  end

  def test_parse_takes_a_parameter
    parser = Chisel.new
    assert_equal ["<p>hi</p>"], parser.parse("hi")
  end

  def test_input_with_hash_will_returned_wrapped_with_h1
    parser = Chisel.new
    assert_equal ["<h1> My Life in Desserts</h1>"], parser.parse("# My Life in Desserts")
  end

  def test_input_with_hash_will_returned_wrapped_with_h2
    parser = Chisel.new
    assert_equal ["<h2> Chapter 1: The Beginning</h2>"], parser.parse("## Chapter 1: The Beginning")
  end

  def test_h4_format_works
    parser = Chisel.new
    assert_equal = "<h4> hi </h4>", parser.parse("####hi")
  end
  def test_h3_format_works
    parser = Chisel.new
    assert_equal = "<h3> hi </h3>", parser.parse("###hi")
  end
  def test_h3_format_works
    parser = Chisel.new
    assert_equal = "<h2> hi </h2>", parser.parse("##hi")
  end
  def test_h3_format_works
    parser = Chisel.new
    assert_equal = "<h1> hi </h1>", parser.parse("#hi")
  end

end
