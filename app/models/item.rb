class Item < ApplicationRecord
  belongs_to :user
  has_one :application
  accepts_nested_attributes_for :application
  has_many :comments
end
