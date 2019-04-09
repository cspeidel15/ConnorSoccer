# frozen_string_literal: true

class ProductsController < ApplicationController
  add_breadcrumb 'Home', :products_path
  add_breadcrumb 'About', '/products/about'

  def index
    @products = Product.order(:bin).page(params[:page])
    @categories = Category.order(:name)
  end

  def show
    @product = Product.find(params[:id])
  end

  def about
    @employees = Employee.all
  end
end
