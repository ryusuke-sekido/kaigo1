Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :admins

  namespace :admin do
    get '/customers/unsubscribe' => 'customers#unsubscribe'
    patch '/customers/withdraw' => 'customers#withdraw'
    resources :customers do
     resources :records, only: [:create, :update, :destroy]
     resources :schedules, only: [:create, :update, :destroy]
    end
    resources :records, only: [:new, :index]
    resources :comments
    resources :schedules, only:[:new, :index]
    resources :events
    resources :carendars
  end

  devise_scope :admin do
    post 'admins/guest_sign_in', to: 'admins/sessions#guest_sign_in'
  end

  get "search"  => "searches#search"
  get "select" => "selects#select_form"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
