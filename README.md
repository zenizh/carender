# Carender

A simple calendar gem for Rails application.

## Usage

This library automatically renders the calendar as HTML table by reading `params[:year]` and `params[:month]`.

A code of simple calendar:

```erb
<%= carender do |date| %>
  <%= date.day %>
<% end %>
```

Above code renders following table.
The string passed as a block is rendered in each cell.

```html
<table>
  <tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th></tr>
  <tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td></tr>
  <tr><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td></tr>
  <tr><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td></tr>
  <tr><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td></tr>
  <tr><td>28</td><td>29</td><td>30</td><td>31</td><td></td><td></td><td></td></tr>
</table>
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
