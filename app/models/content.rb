class Content < ApplicationRecord
	scope :published, -> { where(status: 'published') }
end
