class ReportsController < ApplicationController
  before_action :schools, only: [:index]

  def index
    if params[:search]
      redirect_to action: "show", id: params[:search]
    else
      @reports = School.where(id: params[:id])
    end
  end

  def show
    @schools = School.report_student_active(params[:id])
    @school = School.find(params[:id])
    #render layout: false
  end

  private
  def schools
    @schools = School.all
  end

end
