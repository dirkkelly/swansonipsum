Swansonipsum::Application.routes.draw do
  match '/quotes' => "ipsums#quotes"

  root :to => "ipsums#quotes"
end
