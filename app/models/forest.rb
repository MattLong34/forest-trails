class Forest < ApplicationRecord
    # dependent destroy needed to enable destroy method and only on the one class ?
    has_many :trails, dependent: :destroy
end
