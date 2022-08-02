class WelcomeController < ApplicationController
  def index
    redirect_to dashboard_path if user_signed_in?
    @HomeArticles = Article.all
  end
end
