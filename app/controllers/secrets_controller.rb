class SecretsController < ApplicationController

    def show
        is_logged_in?
    end

end
