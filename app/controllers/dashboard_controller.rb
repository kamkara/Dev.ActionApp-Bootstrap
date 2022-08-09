class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @MembersList = Bemembership.all.order('created_at desc')
    @ProjetsList = Projet.all
    @CampagnesList = Campagne.all
  end

  def home
  end
end
