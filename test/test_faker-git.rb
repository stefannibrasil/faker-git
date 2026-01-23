# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "faker-git"
require 'test/unit'

class TestFakerGit < Test::Unit::TestCase
  def setup
    @tester = Faker::Git
  end

  def test_branch
    assert_match(/\w+/, @tester.branch)
  end
end

class TestFakerGitWithLocale < Test::Unit::TestCase
  def setup
    @tester = Faker::Git
    @previous_locale = Faker::Config.locale
    Faker::Config.locale = 'pt-BR'
  end

  def test_branch
    assert_match(/\w+/, @tester.branch)
  end

  def teardown
    Faker::Config.locale = @previous_locale
  end
end
