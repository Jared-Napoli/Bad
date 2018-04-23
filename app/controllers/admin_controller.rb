class AdminController < ApplicationController
  def index
      @locations = SearchQuery.all
  end
end
