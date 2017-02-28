class Order < ApplicationRecord
  belongs_to :party
  belongs_to :customer
end
