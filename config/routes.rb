Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrtions: 'users/registrations' 
  }
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  
 root 'home#index'
end
