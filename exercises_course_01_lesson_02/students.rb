class Students
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    compare_grades(student)
  end

  protected

    def compare_grades(student)
      true if @grade < student.protected_grade
    end

    def protected_grade
      @grade
    end
end

joe = Students.new('Joe', 'A')
bob = Students.new('Bob', 'B')
puts "Well done!" if joe.better_grade_than?(bob)
puts "Not well done!" unless bob.better_grade_than?(joe)
puts "Well done!" if bob.better_grade_than?(joe)
