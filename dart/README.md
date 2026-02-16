# Domain Availability API - Dart/Flutter Client

Domain Availability Checker is a simple tool for checking the availability of a domain. It returns if the domain is available or not.

[![pub package](https://img.shields.io/pub/v/apiverve_domainavailability.svg)](https://pub.dev/packages/apiverve_domainavailability)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Domain Availability API](https://domainavailability.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_domainavailability: ^1.1.14
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
      "registrar": "GoDaddy.com, LLC"
    }
  }
}
```

## API Reference

- **API Home:** [Domain Availability API](https://domainavailability.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/domainavailability](https://docs.apiverve.com/ref/domainavailability?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
