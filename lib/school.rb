# code here!
class School

  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    if !roster.keys.include?(grade) then roster[grade] = [name]
    else roster[grade].push(name) end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |(grade, students), hash|
      hash[grade] = students.sort
    end
  end
end
