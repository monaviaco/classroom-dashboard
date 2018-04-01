Rails.application.routes.draw do

  get 'auth/google_oauth2/callback', to: 'sessions#create'
  get "/login", to: redirect("/auth/google_oauth2")
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  delete "/logout", to: "sessions#destroy"

  resources :sessions, only: [:create, :destroy]
  resource :index, only: [:show]

  # nested routes so student always belongs to section
  # and section always belongs to user
  #resources :users do
    resources :sections do
      resources :students
    end
  #end

  root 'sections#index'

  get 'sections/:id/flashcards', to: "sections#flashcards", as: :section_flashcards


end
