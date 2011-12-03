class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :second_name, :adress, :phone
#  def create(attributes = nil, options = {}, &block)
#    attributes.delete :admin
#    unless User.last
#      self.admin = true
#    end
#    super(attributes, options, &block)
#  end

  belongs_to :ugroupe
end
