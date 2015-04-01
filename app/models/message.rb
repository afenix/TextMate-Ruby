class Message < ActiveRecord::Base
  validates :body, :presence => true
  validates :to, :presence => true
  validates :from, :presence => true
end
