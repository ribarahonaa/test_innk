class Arriendo < ApplicationRecord
  belongs_to :users , optional: true
  belongs_to :films , optional: true
  belongs_to :series , optional: true
end
