class StudentsController < ApplicationController
  before_action :set_student, only: [:activate, :deactivate]
  before_action :set_course, except: [:active_students_by_school]
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
  end

  def edit; end

  def update
    @student.update(student_params)
  end

  def activate
    @student.update_attribute(:active, true)
  end

  def deactivate
    @student.update_attribute(:active, false)
  end

  def active_students_by_school
    @students = Student.active_by_school_id(params[:school_id])
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def set_course
    @course = Course.find(params[:course_id])
  end

  def student_params
    params.require(:student).permit( :name, :active, :course_id )
  end
end