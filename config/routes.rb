Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  #get 'admin/preferences', to: 'preferences#index'

  #scope '/admin' do
    #resources :preferences, only: [:index]
  #end

  namespace :admin do
    resources :preferences
  end

end
