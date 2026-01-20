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

# things for later

# what if the person only wants to add one new method to an existing generator? is that possible? need to explore it later

# to make this more realistic, create a YAMl file to fetch values randomly using `fetch` from Faker
# need to test how will locales work with plugins/external generators
