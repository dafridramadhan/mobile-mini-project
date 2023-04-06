class Highlight {
  String name;
  String location;
  String imageAsset;
  double rating;

  Highlight({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.rating,
  });
}

var highLightClubs = [
  Highlight(
    name: 'Arsenal F.C.',
    location: 'North London, England',
    imageAsset: 'assets/images/arsenal.png',
    rating: 5.00,
  ),
  Highlight(
    name: 'Real Madrid CF',
    location: 'Madrid, Spain',
    imageAsset: 'assets/images/real_madrid.png',
    rating: 4.76,
  ),
  Highlight(
    name: 'S.S.C Napoli',
    location: 'Naples, Campania',
    imageAsset: 'assets/images/napoli.png',
    rating: 4.88,
  ),
  Highlight(
    name: 'B.V.B Dortmund',
    location: 'Dortmund, North Rhine-Westphalia',
    imageAsset: 'assets/images/dortmund.png',
    rating: 4.67,
  ),
  Highlight(
    name: 'Paris Saint Germain F.C.',
    location: 'Paris, France',
    imageAsset: 'assets/images/psg.png',
    rating: 4.56,
  ),
];
