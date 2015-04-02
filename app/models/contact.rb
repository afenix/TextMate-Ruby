class Contact < ActiveRecord::Base
  has_and_belongs_to_many :messages
  validates :name, :presence => true
  validates :cell, :presence => true
end
