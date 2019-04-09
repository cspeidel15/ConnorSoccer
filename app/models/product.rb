# frozen_string_literal: true

class Product < ApplicationRecord
  has_and_belongs_to_many :cart_orders
  belongs_to :category
  has_many :carts
  mount_uploader :image, ImageUploader
  validates :bin, :name, uniqueness: true
  paginates_per 10

  # named_scope :paginate, ->(page, per_page) { { offset: ((page || 1) - 1) * (per_page || 10), limit: :per_page || 10 } }
end
