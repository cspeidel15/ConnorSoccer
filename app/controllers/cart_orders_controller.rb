# frozen_string_literal: true

class CartOrdersController < ApplicationController
  def index; end

  before_action :authenticate_user!
end
