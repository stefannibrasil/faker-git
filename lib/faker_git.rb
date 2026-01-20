# frozen_string_literal: true

mydir = __dir__

require 'faker'

I18n.load_path += Dir[File.join(mydir, 'locales', '**/*.yml')]

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
        fetch('git.branch')
      end
    end
  end
end
