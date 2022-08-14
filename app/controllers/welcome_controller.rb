class WelcomeController < ApplicationController
  def index
    redirect_to dashboard_path if user_signed_in?
    @HomeArticles = Article.where("status= ?","La lune").order("created_at desc").take(7)
    @HomeProjets = Projet.where("status= ?","La lune").order("created_at desc").take(2) #Projet a la lune
    @HomeCampagnes = Campagne.where("status= ?","La lune").order("created_at desc").take(2)#4 dernieres campagnes
    @HomeBenevols = Benevol.where("status= ?","La Lune").order("created_at desc").take(2)#3 dernieres benevol
  end
end
