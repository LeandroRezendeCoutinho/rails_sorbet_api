# typed: true

class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show update destroy]

  # GET /employees
  def index
    @employees = Employee.all

    person = Person.new('leandro', 12)
    person.name = 'Leandro'
    person.age = 21
    seller = Seller.new('name', 12)
    Seller.new('1', 1)
    Store.new(seller)
    seller.salary.deposit(100.0)
    seller.salary.withdraw(50.0)

    goal = Goal.new
    goal.amount = 100.0
    goal.sellers = []
    goal.cars = 12

    render json: @employees
  end

  # GET /employees/1
  def show
    render json: @employee
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  def destroy
    @employee.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def employee_params
    params.require(:employee).permit(:name, :full_name, :avatar, :birthday, :cellphone, :cpf, :document, :gender,
                                     :nationality)
  end
end
