Manticore::Application.routes.draw do

  resources :characters do
    resources :statistics
  end

  root :to => "characters#index"

end
