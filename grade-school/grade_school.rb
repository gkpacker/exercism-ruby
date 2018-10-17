module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @grades_with_students = []
  end

  def add(student, grade)
    @grades_with_students.push({ grade: grade, students: [] }) if find_grade(grade).empty?

    find_grade(grade).first[:students] << student
  end

  def students(grade)
    school_grades = find_grade(grade)

    school_grades.empty? ? school_grades : school_grades.first[:students].sort
  end

  def students_by_grade
    @grades_with_students.each { |school_hash| school_hash[:students].sort! }
    @grades_with_students.sort_by { |school_hash| school_hash[:grade] }
  end

  private

  attr_accessor :grades_with_students

  def find_grade(grade)
    @grades_with_students.select { |school_hash| school_hash[:grade] == grade }
  end
end
