# frozen_string_literal: true

module Api
  module V1
    # Token User
    class UserTokenController < Knock::AuthTokenController
      skip_before_action :verify_authenticity_token, only: %i[create]
    end
  end
end
