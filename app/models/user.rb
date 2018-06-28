class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles, dependent: :destroy
         has_many :posts, dependent: :destroy
         has_one :address
         has_and_belongs_to_many :events
         has_many :enrollments
         has_many :games, through: :enrollments
         has_one :purse
         has_one :payment_history, through: :purse
         has_many :comments, as: :commentable
end

