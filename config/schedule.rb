# frozen_string_literal: true

set :environment, 'development'

every 1.hour do
  runner 'UpdateTrendingsJob.perform'
end
