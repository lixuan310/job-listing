Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :favorite

  resources :jobs do
    collection do
      get :search
    end
    resources :resumes
  end

  root 'welcome#index'

  namespace :admin do
   resources :jobs do
     member do
      post :publish
      post :hide
     end

     resources :resumes
   end
  end

  resources :jobs do
    put :favorite, on: :member
    resources :favorite do
    end
  end

end
