class Student

  def initialize(name, cohort_number)
    @student = name
    @cohort = cohort_number
  end

  def get_name()
    return @student
  end

  def get_cohort()
    return @cohort
  end

  def set_name(name)
    @student = name
  end

  def set_cohort(cohort_number)
    @cohort = cohort_number
  end

  def pillow_talk()
    return "I'm a real boy"
  end

  def say_favourite(language)
    return "I be lovin that #{language}!"
  end

end