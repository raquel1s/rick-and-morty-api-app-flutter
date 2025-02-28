class Character {
  final int id;
  final String name;
  final String status;
  final String image;
  final String species;
  final String gender;
  final String originName;
  final String locationName;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.image,
    required this.species,
    required this.gender,
    required this.originName,
    required this.locationName
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      image: json['image'],
      species: json['species'],
      gender: json['gender'],
      originName: json['origin']['name'],
      locationName: json['location']['name']
    );
  }
}
