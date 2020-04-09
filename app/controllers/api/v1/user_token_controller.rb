# frozen_string_literal: true

module Api
  module V1
    # Token User
    class UserTokenController < Knock::AuthTokenController
      skip_before_action :verify_authenticity_token, only: %i[create]
    end
  end
end

# {
#   "jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1ODY0ODcyMTMsInN1YiI6MX0._eORhop2OoAhCxur_cpljmt_ghhsKgZkNu-83cM1V_Q"
# }
