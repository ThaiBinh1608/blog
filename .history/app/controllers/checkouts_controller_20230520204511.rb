class CheckoutsController < ApplicationController
    before_action :autheticate_user!


    def show
        current_user.set_payment_processor :stripe
        curr
    end 

    def success
    end
end
