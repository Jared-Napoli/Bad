class LocationsController < ApplicationController
  def index
      if SearchQuery.find_by(query_string: params[:query])
        @locations = SearchQuery.find_by(query_string: params[:query]).query_response
        @locations = JSON.parse(@locations.gsub! '=>', ':')
      else
          @locations = MetaWeather.new(params).search
          if !@locations.blank?
            SearchQuery.create(query_string: params[:query], query_response: @locations)
          end

      end
  end

  def show
    @location = MetaWeather.new(params).location_data
  end
end
