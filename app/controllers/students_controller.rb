class StudentsController < ApplicationController

  def index
    students = Student.all.each{|s| s.first_name.downcase}

    students.find_by(first_name: params[:name])
    byebug
    render json: students
  end

  def student_info
    student = Student.find(params[:id])
    render json: student
  end

end
