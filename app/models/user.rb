class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :payment
  has_many :images
  
  # User signup is handled through registrations_new form. User accepts nested payments via form submissions
  accepts_nested_attributes_for :payment
end
