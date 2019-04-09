# frozen_string_literal: true

class Inventory < ApplicationRecord
  mount_uploader :image, ImageUploader
end
