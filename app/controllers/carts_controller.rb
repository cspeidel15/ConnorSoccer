# frozen_string_literal: true

class CartsController < ApplicationController
  def index
    @carts = Cart.where('user_id = ?', current_user.id)
  end

  def create
    if !user_signed_in?

    else
      @cart = Cart.new(cart_params)

      redirect_to carts_path if @cart.save
    end
  end

  def update
    @cart = Cart.find(params[:id])

    logger.debug params.inspect

    @cart.update_attribute(:quantity, params[:cart][:quantity])

    @cart.save

    redirect_to carts_path
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

  private

  def cart_params
    params.require(:cart).permit(:user_id, :product_id, :quantity)
  end
end
