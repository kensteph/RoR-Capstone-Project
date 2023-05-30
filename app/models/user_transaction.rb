class UserTransaction < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true
  belongs_to :user, class_name: "user", foreign_key: "author_id"
  has_and_belongs_to_many :categories
end
