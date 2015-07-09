require 'rails_helper'

RSpec.describe Acronym, type: :model do
  let!(:acronym) { create(:acronym) }

  it "has a name" do
    validate_presence_of(:name)
  end

  it "has a definition" do
    validate_presence_of(:definition)
  end
end
