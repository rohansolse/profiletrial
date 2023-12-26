class Allergy {
  final String date;
  final String allergies;
  final String reactions;

  Allergy({
    required this.date,
    required this.allergies,
    required this.reactions,
  });
}

final List<Allergy> allergies = [
  Allergy(
    date: 'Dec 12, 2023',
    allergies: 'Hypochorite',
    reactions: 'Cyanoacrylate',
  ),
  Allergy(
    date: 'Dec 01, 2023',
    allergies: 'Sulfacetamide',
    reactions: 'Haemobartonella',
  ),
  Allergy(
    date: 'Dec 04, 2023',
    allergies: 'Cephalosporin',
    reactions: 'Eosinopenia',
  ),
  // Add more allergy instances as needed
];
