Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :admins


  namespace :admin do
    get '/customers/unsubscribe' => 'customers#unsubscribe'
    patch '/customers/withdraw' => 'customers#withdraw'
    resources :customers
    resources :records
    resources :comments
    resources :schedules
    resources :events
  end

  devise_scope :admin do
    post 'admins/guest_sign_in', to: 'admins/sessions#guest_sign_in'
  end

  get "search"  => "searches#search"
  get "select" => "selects#select_form"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
