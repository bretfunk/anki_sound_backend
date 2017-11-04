Rails.application.routes.draw do
  #lists endpoints for developers
  get "/", to: "welcome#index"

  scope "/api" do
    #list all phrases for everyone, with password verification so only logged in users can see
    #the front end will parese the data and only show the user their phrases
    get "/phrases", to: "phrases#index"

    #get the id of the current user for database entry
    get "/user", to: "users#index"

    #if credientals are valid, knock returns an access token for the api
    post "user_token" => "user_token#create"

  end

end
