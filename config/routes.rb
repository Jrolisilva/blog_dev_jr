Rails.application.routes.draw do
  get 'blog/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrtions: 'users/registrations' 
  }
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :blog, only: [:index]
  
 root 'home#index'
end
