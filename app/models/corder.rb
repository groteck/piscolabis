class Corder < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  attr_accessible :user_id, :order_id, :finished
end
