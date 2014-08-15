module Scopes
	extend ActiveSupport::Concern

	included do
		scope :asc,  -> { order(id: :asc) }
		scope :desc, -> { order(id: :desc) }
	end
end