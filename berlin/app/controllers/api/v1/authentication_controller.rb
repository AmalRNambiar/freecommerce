# frozen_string_literal: true
class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def create
    command = AuthenticateUser.call(params[:email], params[:password])
    if command.success?
      render json: { email: params[:email], token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end
