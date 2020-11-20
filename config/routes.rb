Rails.application.routes.draw do
  resources :posts
  resources :follows
  resources :to_dos
  resources :calendars
  resources :events
  resources :users

  get 'events_and_to_dos', to: 'events#event_and_to_dos'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
