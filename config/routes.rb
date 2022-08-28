Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :admins

  namespace :admin do
    resources :customers
    resources :records
    resources :comments
    resources :schedules
    resources :events

  end

  devise_scope :admin do
    post 'admins/guest_sign_in', to: 'admins/sessions#guest_sign_in'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
