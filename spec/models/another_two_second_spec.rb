require 'rails_helper'

RSpec.describe "Another two seconds" do
  it "takes two seconds to run" do
    sleep(2)
    expect(true).to be true
  end
end
