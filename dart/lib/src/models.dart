/// Response models for the Domain Availability API.

/// API Response wrapper.
class DomainavailabilityResponse {
  final String status;
  final dynamic error;
  final DomainavailabilityData? data;

  DomainavailabilityResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DomainavailabilityResponse.fromJson(Map<String, dynamic> json) => DomainavailabilityResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DomainavailabilityData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Domain Availability API.

class DomainavailabilityData {
  String? domain;
  bool? available;
  DomainavailabilityDataOwner? owner;

  DomainavailabilityData({
    this.domain,
    this.available,
    this.owner,
  });

  factory DomainavailabilityData.fromJson(Map<String, dynamic> json) => DomainavailabilityData(
      domain: json['domain'],
      available: json['available'],
      owner: json['owner'] != null ? DomainavailabilityDataOwner.fromJson(json['owner']) : null,
    );
}

class DomainavailabilityDataOwner {
  String? registrar;

  DomainavailabilityDataOwner({
    this.registrar,
  });

  factory DomainavailabilityDataOwner.fromJson(Map<String, dynamic> json) => DomainavailabilityDataOwner(
      registrar: json['registrar'],
    );
}

class DomainavailabilityRequest {
  String domain;

  DomainavailabilityRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
