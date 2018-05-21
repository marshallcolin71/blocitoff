class User < ActiveRecord::Base
  has_many :items

  devise :database_authenticatable, :registerable, :confirmable, 
         :recoverable, :rememberable, :trackable, :validatable
end
