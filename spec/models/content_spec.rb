require 'rails_helper'

RSpec.describe Content, type: :model do
  it "is valid with a title, author, summary, content, status and published date" do
    content = Content.new(
     	title: Faker::Food.dish,
			published_date: Faker::Date.between(Date.today, Date.today + 60),
			author: Faker::Name.name,
			summary: Faker::Food.ingredient,
			content: Faker::Food.description,
			status: "draft"
     )
     expect(content).to be_valid
	end
end
