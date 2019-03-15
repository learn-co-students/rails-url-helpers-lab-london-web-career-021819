class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:id])
    @student.active == false ? @student.active = true : @student.active = false
    @student.save
    redirect_to @student
  end
end