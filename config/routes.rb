Rails.application.routes.draw do
  get "adhesion", to:'bememberships#new'
  get 'good', to:"bememberships#page_good"
  resources :bememberships, except: %i[new]
  resources :activities
  resources :privates
  resources :legals
  resources :articles
  resources :blogs
  
  #Legal
  get "agir", to:'agir#index'
  get "charte", to:"legals#index"
  get "vie-privée", to:"privates#index"
  get 'home/index'
  
  root to:'welcome#index'
  get "action-projet", to:'action_page#index'
  get "dons", to:'donner#index'
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
  get "beaction-v", to:"membership#beaction"


  # CAMPAGNES
  get "nouvelle-campagnes", to:"campagnes#new"
  get "campagnes-list", to:"campagnes#index"
  get "edit-campagnes", to:"campagnes#edit"

  
  #PROJETS
  get "new-projet", to:"projets#new"
  get "projets-list", to:"projets#index"
  #put "edit-projet", to:"projets#edit"
  


  #ABOUTS
  get "mission", to:"abouts#show"
  get "nous-decouvrir", to:"abouts#index"
  get "mission_new", to:"abouts#new"
  get "mission_editer", to:"abouts#edit"
  get "mission_supprimer", to:"abouts#destroy"
 

  devise_scope :user do
    get 'profile/edit'    => 'devise/registrations#edit',   :as => :edit_user_registration
    get 'profile/cancel'  => 'devise/registrations#cancel', :as => :cancel_user_registration
    
  end
  
  resources :projets
  resources :campagnes
  resources :abouts, only: %i[create show]

  devise_for  :users,
    :path => '',
    :path_names =>
      { :sign_in => 'beaction',
        :sign_out => 'logout',
        :sign_up =>   '', 
          :registration => 'signup-admin',
          :edit => 'edit'
      }
  
end
