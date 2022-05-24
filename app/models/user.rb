class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :skills
  has_many :languages
  has_many :experiences

  def full_name
    [first_name, last_name].join(' ')
  end

  def location
    [city, country].join(', ')
  end
end
