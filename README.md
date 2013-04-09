# Campfiyah

A simple faraday backed library for campfire.  It comes with an in-memory adapter
to make working with campfire's API in dev/test a lot easier.

Given a subdomain and a token Campfiyah gives you two things.

* List all rooms the token can access on a campfire subdomain
* Send messages to specific rooms

## Installation

Add this line to your application's Gemfile:

    gem 'campfiyah'

## Usage

```ruby
account = Campfiyah::Account.new(default_subdomain, default_token)
room = account.find_room("The Danger Room")
room.message("woot").should be
```

You can also enable the in-memory adapter for development or tests.

```ruby
Campfiyah.enable_mock!
```

This won't hit the network at all but give you a consistent interface.

## Contributing

1. Create new Pull Request
