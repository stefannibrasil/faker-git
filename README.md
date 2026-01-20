# faker-git

Exploring adding external generators to faker ruby. This gem adds the `Faker::Git` generator:

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
```
