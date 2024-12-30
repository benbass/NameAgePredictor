class ResponseEntity{
  int count;
  String name;
  String? country;
  int? age; // API returns null when first name is not found

  ResponseEntity({
    required this.count,
    required this.name,
    required this.country,
    required this.age,
  });
}