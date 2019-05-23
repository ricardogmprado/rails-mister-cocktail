Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # user story for cocktails
  # index
  # show (nested dose for each ingredient)
  # create
  # new

  # resources :cocktails, except: [:destroy, :update, :edit]

  # user story for doses

  # add a new dose to existing cocktail --> new and create
  resources :cocktails, except: [:destroy, :update, :edit] do
    resources :doses, only: [:new, :create]
  end
  # delete
  resources :doses, only: [:destroy]
end
