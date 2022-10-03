class EmployeesController < ApplicationController
  def show
  end

  private

  def employee_params
    params.require(:employee).permit(:email, :password)
  end
end
