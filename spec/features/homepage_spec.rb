require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  it "has some content" do
    visit root_path

    expect(page.text).to include "Linux lets you rename folders in use"
  end

  it "answers a question", js: true do
    visit root_path

    page.find(".js_windows").click()
    expect(page).to have_text "Windows does not let you rename folders in use"
  end
end
