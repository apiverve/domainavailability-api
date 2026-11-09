# Domain Availability API - Dart/Flutter Client

Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken. Get creation and expiration dates for taken domains, while paid plans add registrar details and what the domain costs to register and renew.

[![pub package](https://img.shields.io/pub/v/apiverve_domainavailability.svg)](https://pub.dev/packages/apiverve_domainavailability)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Domain Availability API](https://apiverve.com/marketplace/domainavailability?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_domainavailability: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_domainavailability/apiverve_domainavailability.dart';

void main() async {
  final client = DomainavailabilityClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'myspace.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
    },
    "lifecycle": "registered",
    "eppStatus": [
      "client delete prohibited",
      "client renew prohibited",
      "client transfer prohibited",
      "client update prohibited"
    ],
    "nameservers": [
      "ns-cloud-a1.googledomains.com",
      "ns-cloud-a2.googledomains.com",
      "ns-cloud-a3.googledomains.com",
      "ns-cloud-a4.googledomains.com"
    ],
    "isParked": false,
    "isForSale": false,
    "parkingService": null
  }
}
```

## API Reference

- **API Home:** [Domain Availability API](https://apiverve.com/marketplace/domainavailability?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/domainavailability](https://docs.apiverve.com/ref/domainavailability?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
