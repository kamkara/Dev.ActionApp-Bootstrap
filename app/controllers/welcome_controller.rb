class WelcomeController < ApplicationController
  def index
    redirect_to dashboard_path if user_signed_in?
    @HomeArticles = Article.all.order('created_at desc') #where("status= ?","La lune").order("created_at desc").take(8)
  end
end
