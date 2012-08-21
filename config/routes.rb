Swansonipsum::Application.routes.draw do
  resources :ipsums

  root :to => "ipsums#index"
end
