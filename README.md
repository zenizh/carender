# Carender

[![Gem Version](https://badge.fury.io/rb/carender.svg)](https://badge.fury.io/rb/carender)
[![Build Status](https://travis-ci.org/kami-zh/carender.svg?branch=master)](https://travis-ci.org/kami-zh/carender)

This gem renders a monthly calendar for Ruby on Rails application.

## Usage

This gem automatically renders a monthly calendar as HTML table by fetching `params[:year]` and `params[:month]` at view context.
Following code renders a simple monthly calendar:

```erb
<%= carender do |date| %>
  <%= date.day %>
<% end %>
```

The content passed as a block is rendered in each cell.
For example, above code renders like following HTML table.

```html
<table>
  <tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th></tr>
  <tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td></tr>
  ...
</table>
```

### Collection

To render a calendar with a collection which is grouped by the specified column, you can pass `:collection` and `:column` arguments like as follows:

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
