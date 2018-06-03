class HomeController < ApplicationController
    before_action :authenticate_user!, :except => [:index]
    protect_from_forgery with: :exception
    
    def index
    end

    def dashboard
    end

    def after_sign_in_path_for(resource)
        home_dashboard_path
    end
end
