class StudentsController < ApplicationController
  before_action :set_student, only: :show


  
  def index
    @students = Student.all
  end

  def activate_student_path
    @student.toggle(:active)
  end
  # needs a separate view??

  private

    # @student used in show page (individual student)
  def set_student
    @student = Student.find(params[:id])
  end
end