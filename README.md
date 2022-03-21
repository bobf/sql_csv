# SqlCsv

Create a CSV export from a SQL query.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sql_csv'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sql_csv

## Usage

Write an SQL command to `stdin` and set `DATABASE_URL` to configure connection. CSV output will be written to `stdout`.

```bash
echo "select * from users" | DATABASE_URL='postgresql://user:password@host:1234/database' sql_csv > users.csv
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
