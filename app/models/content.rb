class Content < ApplicationRecord
	scope :published, -> { where(status: 'published') }
	scope :draft, -> { where(status: 'draft') }


	# make all of the draft contents as published.
	class << self
		def make_published
			Content.draft.update_all(status: 'published')
		end
	end
end
