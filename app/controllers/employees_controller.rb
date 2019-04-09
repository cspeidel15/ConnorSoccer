# frozen_string_literal: true

class EmployeesController < ApplicationController
  add_breadcrumb 'Home', :products_path
  add_breadcrumb 'About', '/products/about'

  def index; end

  def show
    @employee = Employee.find(params[:id])
    add_breadcrumb 'Team Member', @employee
  end
end
