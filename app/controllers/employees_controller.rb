class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    find_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path(@employee.id)
    else
      render :new
    end
  end

  def edit
    find_employee
  end

  def update
    find_employee
    @employee.update(employee_params)
    if @employee.valid?
      redirect_to employee_path(@employee.id)
    else
      render :edit
    end
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

end
