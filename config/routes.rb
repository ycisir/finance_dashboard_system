Rails.application.routes.draw do
  resources :users do
    patch 'status', on: :member, action: :change_status
  end

  resources :financial_records do
    collection do
      get 'summary'
    end
  end
end
