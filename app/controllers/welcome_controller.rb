class WelcomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'welcome', template: nil
      end
    end
  end
end
