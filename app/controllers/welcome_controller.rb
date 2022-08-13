class WelcomeController < ApplicationController
  def index
    redirect_to dashboard_path if user_signed_in?
    @HomeArticles = Article.where("status= ?","La lune").order("created_at desc").take(8)
    @HomeProjets = Projet.where("status= ?","La lune").order("created_at desc").take(4) #Projet a la lune
    @HomeCampagnes = Campagne.order("created_at desc").take(4)#4 dernieres campagnes
  end
end
