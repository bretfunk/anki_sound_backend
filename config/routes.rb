Rails.application.routes.draw do
  #lists endpoints for developers
  get "/", to: "welcome#index"

  #this allows the program to hide the API key as an ENV variable in the backend to be used by the frontend
  get "/password", to: "password#show"

  scope "/api" do
    #only shows current users phrases
    get "/phrases", to: "phrases#index"

    #create new phrase
    post "/phrases", to: "phrases#create"

    #if credientals are valid, knock returns an access token for the api
    post "user_token" => "user_token#create"

    #add new user
    post "/users", to: "users#create"

  end

end
