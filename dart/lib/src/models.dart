/// Response models for the Domain Availability API.

/// API Response wrapper.
class DomainavailabilityResponse {
  final String status;
  final dynamic error;
  final DomainavailabilityData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DomainavailabilityResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DomainavailabilityResponse.fromJson(Map<String, dynamic> json) => DomainavailabilityResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DomainavailabilityData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Domain Availability API.

class DomainavailabilityData {
  String? domain;
  bool? available;
  DomainavailabilityDataOwner? owner;
  String? source;
  DomainavailabilityDataPricing? pricing;
  String? lifecycle;
  List<String>? eppStatus;
  List<String>? nameservers;
  bool? isParked;
  bool? isForSale;
  dynamic parkingService;

  DomainavailabilityData({
    this.domain,
    this.available,
    this.owner,
    this.source,
    this.pricing,
    this.lifecycle,
    this.eppStatus,
    this.nameservers,
    this.isParked,
    this.isForSale,
    this.parkingService,
  });

  factory DomainavailabilityData.fromJson(Map<String, dynamic> json) => DomainavailabilityData(
      domain: json['domain'],
      available: json['available'],
      owner: json['owner'] != null ? DomainavailabilityDataOwner.fromJson(json['owner']) : null,
      source: json['source'],
      pricing: json['pricing'] != null ? DomainavailabilityDataPricing.fromJson(json['pricing']) : null,
      lifecycle: json['lifecycle'],
      eppStatus: (json['eppStatus'] as List?)?.cast<String>(),
      nameservers: (json['nameservers'] as List?)?.cast<String>(),
      isParked: json['isParked'],
      isForSale: json['isForSale'],
      parkingService: json['parkingService'],
    );
}

class DomainavailabilityDataOwner {
  String? registrar;
  String? createdDate;
  String? expiryDate;

  DomainavailabilityDataOwner({
    this.registrar,
    this.createdDate,
    this.expiryDate,
  });

  factory DomainavailabilityDataOwner.fromJson(Map<String, dynamic> json) => DomainavailabilityDataOwner(
      registrar: json['registrar'],
      createdDate: json['createdDate'],
      expiryDate: json['expiryDate'],
    );
}

class DomainavailabilityDataPricing {
  String? tld;
  String? currency;
  DomainavailabilityDataPricingRegistration? registration;
  DomainavailabilityDataPricingRenewal? renewal;
  DomainavailabilityDataPricingTransfer? transfer;
  num? sources;
  dynamic premiumLikely;
  dynamic premiumReason;
  String? updatedAt;

  DomainavailabilityDataPricing({
    this.tld,
    this.currency,
    this.registration,
    this.renewal,
    this.transfer,
    this.sources,
    this.premiumLikely,
    this.premiumReason,
    this.updatedAt,
  });

  factory DomainavailabilityDataPricing.fromJson(Map<String, dynamic> json) => DomainavailabilityDataPricing(
      tld: json['tld'],
      currency: json['currency'],
      registration: json['registration'] != null ? DomainavailabilityDataPricingRegistration.fromJson(json['registration']) : null,
      renewal: json['renewal'] != null ? DomainavailabilityDataPricingRenewal.fromJson(json['renewal']) : null,
      transfer: json['transfer'] != null ? DomainavailabilityDataPricingTransfer.fromJson(json['transfer']) : null,
      sources: json['sources'],
      premiumLikely: json['premiumLikely'],
      premiumReason: json['premiumReason'],
      updatedAt: json['updatedAt'],
    );
}

class DomainavailabilityDataPricingRegistration {
  num? low;
  num? high;

  DomainavailabilityDataPricingRegistration({
    this.low,
    this.high,
  });

  factory DomainavailabilityDataPricingRegistration.fromJson(Map<String, dynamic> json) => DomainavailabilityDataPricingRegistration(
      low: json['low'],
      high: json['high'],
    );
}

class DomainavailabilityDataPricingRenewal {
  num? low;
  num? high;

  DomainavailabilityDataPricingRenewal({
    this.low,
    this.high,
  });

  factory DomainavailabilityDataPricingRenewal.fromJson(Map<String, dynamic> json) => DomainavailabilityDataPricingRenewal(
      low: json['low'],
      high: json['high'],
    );
}

class DomainavailabilityDataPricingTransfer {
  num? low;
  num? high;

  DomainavailabilityDataPricingTransfer({
    this.low,
    this.high,
  });

  factory DomainavailabilityDataPricingTransfer.fromJson(Map<String, dynamic> json) => DomainavailabilityDataPricingTransfer(
      low: json['low'],
      high: json['high'],
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
