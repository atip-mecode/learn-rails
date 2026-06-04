class Subscriber < ApplicationRecord
  belongs_to :mecode_product
  generates_token_for :unsubscribe
end
