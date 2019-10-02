class SecretsController < ApplicationController
     

    def show 
        if not_logged_in
            redirect_to new_session_path
        else 
            render 'show'
        end 
    end 


    private 

    def not_logged_in
        current_user.nil? || current_user.empty?
    end 

end 