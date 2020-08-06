class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    render :new
  end

  def create

    # first = params["student"]["first_name"]
    # last = params["student"]["last_name"]

    first_name = params["first_name"]
    last_name = params["last_name"]
    @student = Student.create("first_name" => first_name, "last_name"=> last_name)
    redirect_to Student.last
    # redirect_to students_path(@student)
  end

end
