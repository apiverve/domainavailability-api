# Domain Availability API - PHP Package

Domain Availability Checker is a simple tool for checking the availability of a domain. It returns if the domain is available or not.

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
      "registrar": "GoDaddy.com, LLC"
    }
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainavailability?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://domainavailability.apiverve.com?utm_source=php&utm_medium=readme](https://domainavailability.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
