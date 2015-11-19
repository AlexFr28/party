class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :events
  has_many :reservations

  validates_presence_of :name, :firstname, :nickname, :phone
  validates :phone, length: { is: 10 }
  validates_uniqueness_of :nickname
end
