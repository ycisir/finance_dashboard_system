Rails.application.routes.draw do
  resources :users do
    patch 'status', on: :member, action: :change_status
  end
end
