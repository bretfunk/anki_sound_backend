class WelcomeController < ApplicationController

  def index
    words = "The only endpoints are:\n\n'/api/phrases' and '/api/user'\n\nand can only be accessed with proper authorization"
    render html: words
  end
end
