class Faker::Git
  Faker.lazy_load(self)

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
