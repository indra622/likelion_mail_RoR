Rails.application.routes.draw do
  root :to => 'dettol#index'
  
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
