class Promo < ApplicationRecord
  belongs_to :party
  belongs_to :customer
end
