# Domain Availability API - Ruby Gem

Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken. Get creation and expiration dates for taken domains, while paid plans add registrar details and what the domain costs to register and renew.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_domainavailability'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_domainavailability
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_domainavailability'

# Initialize the client
client = APIVerve::Domainavailability::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "myspace.com" })
  puts response["data"]
rescue APIVerve::Domainavailability::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Domainavailability::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Domainavailability::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "myspace.com",
    "available": false,
    "owner": {
      "registrar": "GoDaddy.com, LLC",
      "createdDate": "1996-02-22T05:00:00Z",
      "expiryDate": "2029-02-23T05:00:00Z"
    },
    "source": "rdap",
    "pricing": {
      "tld": "com",
      "currency": "USD",
      "registration": {
        "low": 11.08,
        "high": 11.25
      },
      "renewal": {
        "low": 11.08,
        "high": 11.25
      },
      "transfer": {
        "low": 11.08,
        "high": 11.25
      },
      "sources": 2,
      "premiumLikely": null,
      "premiumReason": null,
      "updatedAt": "2026-10-18T10:00:00.000Z"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainavailability?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/domainavailability?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/domainavailability?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
