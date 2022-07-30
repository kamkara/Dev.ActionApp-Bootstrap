class ActionPageController < ApplicationController
  def index
    @ActionProjets = Projet.all.order('created_at desc')
  end
end
