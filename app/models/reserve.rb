class Reserve < ApplicationRecord
  belongs_to :car
  belongs_to :parking
end
