class Banner < ActiveRecord::Base
	include Scopes

	validates :banner_type, presence: true
end
