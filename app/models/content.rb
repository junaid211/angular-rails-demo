class Content < ApplicationRecord
	scope :published, -> { where(status: 'published') }
	scope :draft, -> { where(status: 'draft') }

	#validations
	validates_presence_of :title, :author, :summary, :content, :status

	# make all of the draft contents as published.
	class << self
		def make_published
			Content.draft.update_all(status: 'published', published_date: Date.today)
		end
	end
end
