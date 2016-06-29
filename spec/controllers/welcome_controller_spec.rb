require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  it "creates a pdf" do
    get :index, format: :pdf
    expect(response.header['Content-Type']).to include 'application/pdf'
  end

end
