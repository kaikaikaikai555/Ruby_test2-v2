Rails.application.routes.draw do
  resources :plans
  # これを足すことで、localhost:3000 にアクセスした瞬間に予定一覧が出ます
  root 'plans#index'
end