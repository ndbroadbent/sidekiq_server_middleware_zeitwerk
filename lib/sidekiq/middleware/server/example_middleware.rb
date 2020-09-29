# frozen_string_literal: true

module Sidekiq
  module Middleware
    module Server
      class ExampleMiddleware
        def call(_worker, _job, _queue)
          puts "Running example middleware"
          yield
        end
      end
    end
  end
end
