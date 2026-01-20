# faker-git

An example directory of how to extend `Faker::Base` class to create external generators.

This gem adds the `Faker::Git` generator, with English and Brazilian Portuguese locales.

## Installation

Install gem with

```ruby
gem 'faker-git'          #Gemfile
```

or

```sh
gem install faker-git    #Manual
```

## Usage

```ruby
require 'faker-git'

Faker::Git.branch => 'develop'

Faker::Config.locale = 'pt-BR'
Faker::Git.branch => 'desenvolvimento'
```
