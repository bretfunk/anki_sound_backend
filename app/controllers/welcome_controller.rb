class WelcomeController < ApplicationController

  def index
    render html: "The only endpoint is:\n\n'/api/phrases'\n\nand can only be accessed\nwith proper authorization"
  end
end
