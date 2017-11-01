# Classnames::Rails::View
This is a view helper that dynamically generates class attributes in Rails view, like [JedWatson/classnames](https://github.com/JedWatson/classnames).

## Usage

The Helper method is included automatically, so you can use it immediately.

```erb
<div class="<%= classNames('foo') %>">Hello World</div>
# <div class="foo">Hello World</div>
```

The `classNames` method takes any number of arguments which can be a string or hash.
The argument `'foo'` is short for `{ foo: true }`. If the value associated with a given key is falsy, that key won't be included in the output.

```js
classNames('foo', 'bar'); // => 'foo bar'
classNames('foo', { bar: true }); // => 'foo bar'
classNames({ 'foo-bar': true }); // => 'foo-bar'
classNames({ 'foo-bar': false }); // => ''
classNames({ foo: true }, { bar: true }); // => 'foo bar'
classNames({ foo: true, bar: true }); // => 'foo bar'

// lots of arguments of various types
classNames('foo', { bar: true, duck: false }, 'baz', { quux: true }); // => 'foo bar baz quux'

// other falsy values are just ignored
classNames(null, false, 'bar', undefined, 0, 1, { baz: null }, ''); // => 'bar 1'
```

Arrays will be recursively flattened as per the rules above:

```js
var arr = ['b', { c: true, d: false }];
classNames('a', arr); // => 'a b c'
```

### Change the method name

If you want to change the method name, you can change it with config when starting the application.

```rb
# config/application.rb
class Application < Rails::Application
  ...
  config.classnames_rails_view.method_name = :classes
end
```

```erb
<div class="<%= classes('foo') %>">Hello World</div>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'classnames-rails-view'
```

And then execute:
```bash
$ bundle
```

## Contributing

* The test uses Rspec. Please execute the test with `rspec` command.
* Please code check with [rubocop](https://github.com/bbatsov/rubocop).

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
