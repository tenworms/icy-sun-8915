class EmployeesController < ApplicationController

  def show
    @employees = Employee.all
  end
end
