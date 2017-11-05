# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

 Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     #origins 'https://protected-thicket-11517.herokuapp.com/'
     #origins 'localhost:3000'
     origins 'http://localhost:3000'
     origins 'https://bretfunk.github.io/anki_sound_frontend/'
     origins 'https://bretfunk.github.io'
     #origins 'http://soundoftext.com'

     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end
