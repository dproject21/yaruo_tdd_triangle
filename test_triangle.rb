require 'test/unit'
require './triangle.rb'

class TC_Triangle < Test::Unit::TestCase
  def setup
    @triangle = Triangle.new
  end
  def test_equilateral
    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 1
    assert @triangle.is_equilteral_triangle?, 'should be passed.'
    assert !@triangle.is_scalene_triangle?, 'triangle!'

    @triangle.a = 2
    @triangle.b = 1
    @triangle.c = 1
    assert !@triangle.is_equilteral_triangle?
    assert !@triangle.is_triangle?, 'not triangle!'

    @triangle.a = 1
    @triangle.b = 2
    @triangle.c = 1
    assert !@triangle.is_equilteral_triangle?
    assert !@triangle.is_triangle?, 'not triangle!'

    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 2
    assert !@triangle.is_equilteral_triangle?
    assert !@triangle.is_triangle?, 'not triangle!'

    @triangle.a = 0
    @triangle.b = 0
    @triangle.c = 0
    assert !@triangle.is_equilteral_triangle?, 'zero!'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'
    
    @triangle.a = nil
    @triangle.b = 0
    @triangle.c = nil
    assert !@triangle.is_equilteral_triangle?, 'nil?'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'

    @triangle.a = nil
    @triangle.b = 1
    @triangle.c = 1
    assert !@triangle.is_equilteral_triangle?, 'nil?'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'

    @triangle.a = 1
    @triangle.b = nil
    @triangle.c = 1
    assert !@triangle.is_equilteral_triangle?, 'nil?'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'

    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = nil
    assert !@triangle.is_equilteral_triangle?, 'nil?'
    assert !@triangle.is_isoscales_triangle?, 'not triangle!'
  end
  def test_isoscales_triangle
    @triangle.a = 2
    @triangle.b = 2
    @triangle.c = 1
    assert @triangle.is_isoscales_triangle?, 'should be pass!'
    assert @triangle.is_triangle?, 'triangle!'

    @triangle.a = 1
    @triangle.b = 2
    @triangle.c = 2
    assert @triangle.is_isoscales_triangle?, 'should be pass!'
    assert @triangle.is_triangle?, 'triangle!'
    
    @triangle.a = 2
    @triangle.b = 1
    @triangle.c = 2
    assert @triangle.is_isoscales_triangle?, 'should be pass!'
    assert @triangle.is_triangle?, 'triangle!'

    @triangle.a = 5
    @triangle.b = 4
    @triangle.c = 3
    assert @triangle.is_triangle?, 'triangle!'
    assert @triangle.is_scalene_triangle?, 'scalene_triangle!'
  end
end
