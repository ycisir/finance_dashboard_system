Rails.application.routes.draw do
  root "home#index"
  resources :users do
    patch 'status', on: :member, action: :change_status
  end

  resources :financial_records do
    collection do
      get 'summary'
    end
  end
end
