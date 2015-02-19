gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "chisel"

class ChiselTest < Minitest::Test

  def test_it_runs
    assert true
  end

  def test_chisel_class_exists
    assert Chisel
  end

  def test_parse_method_exist
    parser = Chisel.new
    assert true, parser.parse("n")
  end

  def test_parse_takes_a_parameter
    parser = Chisel.new
    assert true, parser.parse("hi")
  end

  def test_input_with_hash_will_returned_wrapped_with_h1
    parser = Chisel.new
    assert "<h1> My Life in Desserts</h1>", parser.parse("# My Life in Desserts")
  end

  def test_input_with_hash_will_returned_wrapped_with_h2
    parser = Chisel.new
    assert "<h2>Chapter 1: The Beginning</h2>", parser.parse("## Chapter 1: The Beginning")
  end
end
