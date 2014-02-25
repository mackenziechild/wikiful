class WelcomeController < ApplicationController
  def index
  	@recent_articles = Article.all.last(5)
  end
end
