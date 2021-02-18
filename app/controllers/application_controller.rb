class ApplicationController < ActionController::Base
    include SessionsHelper
    def hello
        render html:"<b>Hello World !</b>"
    end
    private
    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger]="please Log in."
            redirect_to login_url
        end
    end
end
