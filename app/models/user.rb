class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  groupify :group_member
  groupify :named_group_member

  has_many :posts

  def admin?
  	role == "admin"
  end

  def regular?
  	role == "regular"
  end

  def guest?
  	role == "guest"
  end
end


