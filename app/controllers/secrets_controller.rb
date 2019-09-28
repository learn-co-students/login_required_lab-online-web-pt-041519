class SecretsController < ApplicationController

  before_action :not_logged_in

  def show
    if not_logged_in
      redirect_to login_path
    end
  end

  private

  def not_logged_in
    current_user.nil? || current_user.empty?
  end
end