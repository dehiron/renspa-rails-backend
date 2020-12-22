class ApplicationController < ActionController::API
    def hello_world
        render json:{text:"Hello World"}
    end

    def test
        render json:{text:"Hello"}
    end

end
