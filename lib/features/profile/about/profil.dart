class Profil {
  String imageUrl;
  String nama;
  String ttl;
  String alamat;
  String telp;
  String email;
  String github;
  List<String> pendidikan;
  List<String> penghargaan;

  Profil(this.imageUrl, this.nama, this.ttl, this.alamat, this.telp, this.email,
      this.github, this.pendidikan, this.penghargaan);

  static List<Profil> samples = [
    Profil(
      'assets/image/DSC09683.jpg',
      'Javas Aryadinata',
      'Surabaya, 24 Maret 2004',
      'Sidoarjo, Buduran, Jawa Timur',
      '089697557919',
      '22082010057@student.upnjatim.ac.id',
      'https://github.com/Javas24',
      [
        'SMPN 5 Sidoarjo',
        'SMKN 2 Buduran',
        'UPN "Veteran" Jawa Timur',
      ],
      [
        'Juara 2 Architecture Photography Competition',
        'Film Terbaik Festival Film ISBI'
      ],
    ),
    Profil(
      'assets/image/Deva.jpg',
      'Deva Naufal Arizky Yacob',
      'Sidoarjo, 13 September 2004',
      'Grand Aloha Regency blok B4-14',
      '081331618558',
      '22082010054@student.upnjatim.ac.id',
      'https://github.com/Vaniliciouz',
      [
        'SMPN 1 Taman',
        'SMKN 2 Buduran',
        'UPN "Veteran" Jawa Timur',
      ],
      [
        '-',
      ],
    ),
  ];
}
