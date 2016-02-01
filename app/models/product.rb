class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end


class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
end


class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews
end
