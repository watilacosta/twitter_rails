# frozen_string_literal: true

set :environment, 'development'

every 1.minute do
  runner 'UpdateTrendingsJob.perform'
end
