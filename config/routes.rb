Rails.application.routes.draw do
   
  root to:'welcome#index'
  
  #### Accounted #####
  get "connecting", to:'accounted#signInMember'
  get "adhesion-partner", to:'accounted#signUpMember'
  get "admin-accounted", to:'accounted#signUpAdmin'
  
  #DASHBOARD
  get "dashboard", to:'dashboard#index'
  get "parametrage", to:'dashboard#home'
  get "donate", to:'donate#index'
  get "agisons-ensemble", to:"involved#index"
  
  # MEMBERSHIP
  get "adherer", to:'membership#index'
  get "members-list", to:"membership#memberslist"
  get "beaction", to:"membership#beaction"


  # CAMPAGNES
  get "nouvelle-campagnes", to:"campagnes#new"
  get "campagnes-list", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"

  
  #PROJETS
  get "new-projet", to:"projets#new"
  get "projets-list", to:"projets#index"
  get "edit-projets", to:"projets#edit"
  


  #ABOUTS
  get "mission", to:"abouts#show"
  get "nous-decouvrir", to:"abouts#index"
  get "mission_new", to:"abouts#new"
  get "mission_editer", to:"abouts#edit"
  get "mission_supprimer", to:"abouts#destroy"
 

  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    #get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :projets,
            :campagnes,
            :abouts, only: %i[create show]

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
