Rails.application.routes.draw do
  #lists endpoints for developers
  get "/", to: "welcome#index"

  #this allows the program to hide the API key as an ENV variable in the backend to be used by the frontend
  get "/password", to: "password#show"

  scope "/api" do
    #list all phrases for everyone, with password verification so only logged in users can see
    #the front end will parese the data and only show the user their phrases
    get "/phrases", to: "phrases#index"

    #if credientals are valid, knock returns an access token for the api
    post "user_token" => "user_token#create"

  end

end
