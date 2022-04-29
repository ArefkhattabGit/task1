// ignore_for_file: constant_identifier_names

class ListTileModel {
  final String iconPath;
  final String title;
  final AboutEnum enumAbout;

  ListTileModel({
    required this.title,
    required this.iconPath,
    required this.enumAbout,
  });
}

enum AboutEnum {
  MUNICIOALITY_INB_BRIEF,
  TOWN_COUNCIL,
  MUNICIOALITY_ADMINISTRATION,
  MUNICIOALITY_FACILITIES,
  STAFF_PHONES
}
