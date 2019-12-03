class User < ApplicationRecord
  has_many :plants, dependent: :destroy
  acts_as_favoritor
end
