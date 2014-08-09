class SearchController < ApplicationController
  def index
    keyword = params[:keyword]

    if user = User.find_by(name: keyword)
      redirect_to user
    elseif Search.for(keyword).nil?
      redirect_to root_path
    else
      @results = Search.for(keyword)
    end

    end
end