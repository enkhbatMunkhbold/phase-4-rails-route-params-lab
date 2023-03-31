class StudentsController < ApplicationController

  def index
    if params[:name]
      name = params[:name].capitalize
      students = Student.all.filter{|s| s.first_name == name || s.last_name == name}
      # students = Student.all.where(first_name: name).or(Student.all.where(last_name: name))
    else
      students = Student.all
    end
    render json: students
  end

  def student_info
    student = Student.find(params[:id])
    render json: student
  end

end
