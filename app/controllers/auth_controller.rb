class AuthController < ApplicationController
  skip_before_action :set_access_token, only: :remove
  def new
    redirect_to FidorApi::Auth.authorize_url
  end

  def callback
    session[:api_token] = FidorApi::Auth.fetch_token(params[:code]).to_hash
    redirect_to root_path
  end

  def remove
    session.delete(:api_token)
    redirect_to root_path
  end
end