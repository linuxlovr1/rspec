Rails.application.routes.draw do
  root "people#index"

  resources :people

  delete 'delete_all_users', to: 'people#destroy_all'
end
