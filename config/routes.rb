Swansonipsum::Application.routes.draw do
  match '/ipsums' => "swansons#ipsums"
  match '/quotes' => "swansons#quotes"

  root :to => "swansons#ipsums"
end
