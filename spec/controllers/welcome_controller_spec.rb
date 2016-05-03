require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  it "creates a pdf" do
    get :index, format: :pdf
  end

end
