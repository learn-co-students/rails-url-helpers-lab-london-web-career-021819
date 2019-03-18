class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end


  def activate
    @student = Student.find(params[:id])
    @student.toggle!(:active)
    redirect_to student_path
  end

  private

    # @student used in show page (individual student)
  def set_student
    @student = Student.find(params[:id])
  end
end