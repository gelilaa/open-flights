Rails.application.routes.draw do
 root to: "pages#index"
  

  scope module: :api, as: :api  do
  namespace :v1 do
    resources :airlines, param: :slug
    resources :reviews, only: [:create,:destroy]
  end
 end
 match '*path', to: 'pages#index', via: :all
 match '*unmatched', to: 'application#route_not_found', via: :all
 
end

