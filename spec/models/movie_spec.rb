require "rails_helper"

RSpec.describe Movie, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context "validation tests" do
    it "ensures name presence" do
      movie = Movie.new(category: "Action", release_date: "12/1/2021", language: "Hindi", runtime: 2.30, description: "Historical movie").save
      expect(movie).to eq(false)
    end
  end
end
