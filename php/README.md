# Domain Availability API - PHP Package

Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken. Get creation and expiration dates for taken domains, while paid plans add registrar details and what the domain costs to register and renew.

## Installation

Install via Composer:

```bash
composer require apiverve/domainavailability
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Domainavailability\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Domainavailability\Client;
use APIVerve\Domainavailability\Exceptions\APIException;
use APIVerve\Domainavailability\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainavailability?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/domainavailability?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/domainavailability?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
