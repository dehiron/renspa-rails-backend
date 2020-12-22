class PropertiesController < ApplicationController
    def index
        @property = Property.all
        render json:@property
    end
end
