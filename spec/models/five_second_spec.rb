require 'rails_helper'

RSpec.describe "Five seconds" do
  it "takes 5 seconds to run" do
    sleep(5)
    expect(true).to be true
  end
end
