# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @products = Product.where('name LIKE ?', "%#{@query}%")
  end
end
