Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # N A M E S P A C I N G  HERE SHOWS LOCATION IN FILETREE
  namespace :api do
    namespace :v1 do
      
      resources :prayers
      
    end
  end

end
