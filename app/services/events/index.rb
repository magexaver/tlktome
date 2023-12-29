# frozen_string_literal: true

module Events
  class Index
    def initialize(current_user:)
      @current_user = current_user
    end

    def call
      current_user.events
    end

    private

    attr_reader :current_user
  end
end
