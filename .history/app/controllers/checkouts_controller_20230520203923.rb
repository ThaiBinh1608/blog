class CheckoutsController < ApplicationController
    before_action :autheticate_user!


    def show
        current_user
    end 

    def success
    end
end
