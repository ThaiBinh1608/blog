class CheckoutsController < ApplicationController
    before_action :autheticate_user!


    def show
        current_user.set_
    end 

    def success
    end
end
