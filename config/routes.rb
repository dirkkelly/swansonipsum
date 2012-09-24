Swansonipsum::Application.routes.draw do
  match '/quotes' => "swansons#quotes"

  root :to => "swansons#quotes"
end
