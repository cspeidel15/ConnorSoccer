# frozen_string_literal: true

class ChargesController < ApplicationController
  def new
    @carts = Cart.where('user_id = ?', current_user.id)
  end

  def create
    @carts = Cart.where('user_id = ?', current_user.id)
    totalPrice = 0

    @carts.each do |cart|
      totalPrice += if !cart.product.salePrice.nil?
                      cart.product.salePrice * cart.quantity
                    else
                      cart.product.price * cart.quantity
                    end
    end
    totalTaxPrice = totalPrice + (totalPrice * current_user.province.tax)
    # Amount in cents
    @amount = totalTaxPrice * 100
    amount = totalTaxPrice * 100

    @customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    @charge = Stripe::Charge.create(
      customer: @customer.id,
      amount: amount.to_i,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
