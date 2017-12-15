Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/dogs/random' => 'dogs#random'
      get '/cats/random' => 'cats#random'
      resources :cats
      resources :dogs
    end
  end
end
