class EntitiesController < ApplicationController
  def index
    require 'will_paginate/array'
    @entities = Entity.order(:name).paginate(:page => params[:page])
  end

  def cities
    require 'will_paginate/array'
    @entities = Entity.by_city.paginate(:page => params[:page])
  end
end
