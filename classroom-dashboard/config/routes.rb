Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :index, only: [:show]

  # nested routes so student always belongs to section
  resources :sections do
    resources :students
  end

  root 'sections#index'

  get 'sections/:id/flashcards', to: "sections#flashcards", as: :section_flashcards


end
