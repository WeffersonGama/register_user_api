class ApplicationController < ActionController::API
  # before_action :authorized

  # def encode_token(payload)
  #   JWT.encode(payload, 'yourSecret')
  # end

  # def auth_header
  #   request.headers['Authorization']
  # end

  # def decoded_token
  #   return unless auth_header

  #   token = auth_header.split(' ', 1)
  #   begin
  #     JWT.decode(token, 'yourSecret', true, algorithm: 'HS256')
  #   rescue JWT::DecodeError
  #     nil
  #   end
  # end

  # def logged_in_user
  #   return unless decoded_token

  #   user_id = decoded_token[0]['id']
  #   @user = User.find_by(id: user_id)
  # end

  # def logged_in?
  #   !!logged_in_user
  # end

  # def authorized
  #   render json: { message: 'Por favor, se identifique!' }, status: :unauthorized unless logged_in?
  # end
end
