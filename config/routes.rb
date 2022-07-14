Rails.application.routes.draw do
 
  root to:'welcome#index'
  
  #### Accounted #####
  get "connecting", to:'accounted#signInMember'
  get "adhesion-partner", to:'accounted#signUpMember'
  get "admin-accounted", to:'accounted#signUpAdmin'
  
  #DASHBOARD
  get "dashboard", to:'dashboard#index'
  get "parametrage", to:'dashboard#home'
  #get "donate", to:'donate#index'
  #get "agisons-ensemble", to:"involved#index"
  
  
  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    #get '/users/sign_out' => 'devise/sessions#destroy'
  end


  devise_for  :users,
    :path => '',
    :path_names =>
      { :sign_in => 'connected',
        :sign_out => 'logout',
        :sign_up =>   '', :registration => 'adhesion',
        :edit => 'edit'
      }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
