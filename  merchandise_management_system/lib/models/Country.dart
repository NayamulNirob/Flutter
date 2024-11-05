class Country {
  final int id;
  final String name;
  final String? business;
  final String? progress;
  final String? status;
  final double sale;

  Country({
    required this.id,
    required this.name,
    this.business,
    this.progress,
    this.status,
    required this.sale,
  });

  // Convert the Country to a JSON map for serialization
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'business': business,
    'progress': progress,
    'status': status,
    'sale': sale,
  };

  // Create a Country from a JSON map
  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'],
      name: json['name'],
      business: json['business'],
      progress: json['progress'],
      status: json['status'],
      sale: json['sale'],
    );
  }
}
