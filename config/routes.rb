Rails.application.routes.draw do
  resources :contacts

  resources :messages, :only => [:index, :new, :create, :show]

end
