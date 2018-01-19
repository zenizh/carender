# Carender

[WIP] A simple calendar gem for Rails application.

## Usage

This library automatically renders the calendar by reading `params[:year]` and `params[:month]`.

A simple calendar:

```erb
<%= carender do |date| %>
  <%= date.day %>
<% end %>
```

With a collection which is grouped by specified column:

```erb
<%= carender collection: @posts, column: :posted_on do |date, posts| %>
  <% posts.each do |post| %>
    <%= link_to post.title, post %>
  <% end %>
<% end %>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carender'
```

And then execute:

```bash
$ bundle
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kami-zh/carender. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
