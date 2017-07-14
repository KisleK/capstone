class Walk < ApplicationRecord
  belongs_to :owner
  belongs_to :walker, optional: true
  belongs_to :dog, optional: true
end
