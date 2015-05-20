# RakeDashboard

Does your application's deployment environment include shell access? Does it include ruby? No? RakeDashboard might be for you too!

Without a command line with ruby, it is hard to use rake. You may already have a lot of important functionality invested in your rake tasks. That makes sense, Rails ships a lot of great rake tasks.

RakeDashboard lets you run your rake tasks from a browser! Now you can throw your Rails apps over the fence as a warfile into a system you have no real permissions to use, and still:

* update your database schema
* seed your database
* run your test suites

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake_dashboard'
```

And then execute:

    $ bundle

Finally, run the provided install generator to add an initializer and a default mount point of ```/rake```:

    $ rails g rake_dashboard:install

## Usage

1. Point your browser to your new route: ```/rake/tasks```.

2. Click on the task you want to run.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rake_dashboard/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
