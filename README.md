# Campfiyah

A simple faraday backed library for campfire.  It comes with an in-memory adapter
to make working with campfire's API in dev/test a lot easier.

Given a subdomain and a token, Campfiyah gives you two things.

* List all rooms the token can access on a campfire subdomain
* Send messages to specific rooms

## Installation

Add this line to your application's Gemfile:

    gem 'campfiyah'


Then require it in your code

```ruby
require 'campfiyah'
```

## Usage

```ruby
account = Campfiyah::Account.new(default_subdomain, default_token)
room = account.room_by_name("The Danger Room")
room.message("woot")
```

Or you can find rooms by id

```ruby
account = Campfiyah::Account.new(default_subdomain, default_token)
room = account.room_by_id(123456)
room.message("woot")
```

Or you can find information on users

```ruby
account = Campfiyah::Account.new(default_subdomain, default_token)
user = account.user_by_id(123456)
user.email
user.name
```

You can also enable the in-memory adapter for development or tests.

```ruby
Campfiyah.enable_mock!
```

This won't hit the network at all but give you a consistent interface.

## Contributing

1. Create new Pull Request

## WTF is up with the name?

![](https://f.cloud.github.com/assets/38/359743/8b6cc2c0-a16d-11e2-8d90-6b84f53bde79.gif)

**Dylan... Dylan.. Dylan, Dylan, and Dylan.  Because I spit hot fiyah.**
