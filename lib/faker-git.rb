# frozen_string_literal: true

require 'faker'

module Faker
  class Git < Base
    class << self
      ##
      # Produces a Git branch name
      #
      # @return [String]
      #
      # @example
      #   Faker::Git.branch
      #    #=> "develop"
      def branch
        branches = [
          "main",
          "develop",
          "feature/user-authentication",
          "feature/payment-integration",
          "bugfix/login-redirect",
          "hotfix/security-patch",
          "release/v1.2.0"
        ]

        sample(branches)
      end
    end
  end
end

# things for later

# not sure about naming the folder 'plugins'... should it be 'generators' instead?
# what if the person only wants to add one new method to an existing generator? is that possible? need to explore it later

# to make this more realistic, create a YAMl file to fetch values randomly using `fetch` from Faker
# need to test how will locales work with plugins/external generators
