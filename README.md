# Carender

[WIP] A simple calendar gem for Rails application.

## Synopsis

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

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
