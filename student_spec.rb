require ('minitest/autorun')
require ('minitest/rg')
require_relative ('student')

class TestStudent < MiniTest::Test

  def setup()
    @student_one = Student.new("Carmen Sandiego", 2)
    @student_two = Student.new("Carmen Elektra", 3)
    @student_three = Student.new("Carmen Chameleon", 300)
  end

  def test_get_name()
    assert_equal("Carmen Sandiego", @student_one.get_name())
  end

  def test_get_cohort()
    @student_two.set_cohort(3)
    assert_equal(3, @student_two.get_cohort())

  end

  def test_set_name()
    @student_two.set_name("Terry")
    assert_equal("Terry", @student_two.get_name)
  end

  def test_pillow_talk()
    assert_equal("I'm a real boy", @student_two.pillow_talk())
  end

  def test_say_favourite()
    assert_equal("I be lovin that Ruby!", @student_three.say_favourite("Ruby"))
    
  end


end