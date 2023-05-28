class CheckoutsController < ApplicationController
    before_action :autheticate_user!


    def show
        current_user.set_payment_pro
    end 

    def success
    end
end
