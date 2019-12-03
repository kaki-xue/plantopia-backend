class User < ApplicationRecord
  has_many :plants, dependent: :destroy
end
