require 'rails_helper'

RSpec.describe Lev, type: :model do
  it "motivates" do
    expect(Lev.new.motivates).to be true
  end

  it "persists" do
    2.times { Lev.create }
    expect(Lev.count).to eq 2
  end
end
