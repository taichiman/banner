class Banner < ActiveRecord::Base
	scope :asc,  -> { order(id: :asc) }
	scope :desc, -> { order(id: :desc) }
end
