class Type < ActiveRecord::Base
  has_many :products
  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
end
