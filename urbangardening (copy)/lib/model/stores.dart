class Stores {
  String name;
  String storeId;
  String profilePict;
  String location;
  String description;
  String openDays;
  String openTime;
  List<String> product;
  List<String> price;
  List<String> photoProduct;
  List<String> productDesc;

  Stores(
      {required this.name,
      required this.storeId,
      required this.profilePict,
      required this.location,
      required this.description,
      required this.openDays,
      required this.openTime,
      required this.product,
      required this.price,
      required this.photoProduct,
      required this.productDesc});
}

var storeList = [
  Stores(
    name: 'Cahaya Abadi',
    storeId: '01234',
    profilePict: 'images/profil/profil1.jpg',
    location: 'Dinoyo, Malang',
    description: 'Toko pertanian terlengkap di Kota Malang',
    openDays: 'Senin - Jumat',
    openTime: '08.00 - 16.00',
    product: [
      'Benih Selada',
      'Benih Pakcoy',
      'Benih Kangkung',
      'Benih Cabai Rawit',
      'Nutrisi Hidroponik AB Mix'
    ],
    price: [
      'Rp 8.000',
      'Rp 8.000',
      'Rp 8.000',
      'Rp 10.000',
      'Rp 15.000',
    ],
    photoProduct: [
      'images/product/benih-selada.jpg',
      'images/product/benih-pakcoy.jpg',
      'images/product/benih-kangkung.jpg',
      'images/product/benih-cabai-rawit.jpg',
      'images/product/nutrisi-hidroponik-ab-mix.jpg',
    ],
    productDesc: [
      'Benih selada unggul merek pak untung. Isi 50 biji benih',
      'Benih Pakcoy berkualiatas. Isi 80 biji benih',
      'Benih Kangkung pilihan. Isi 100 biji benih',
      'Benih Cabai Rawit merakyat. Isi 100 biji benih',
      'Nutrisi cair AB Mix, bisa digunakan pada tanaman hidroponik atau media tanah',
    ],
  ),
  Stores(
    name: 'Nusa Indah',
    storeId: '23456',
    profilePict: 'images/profil/profil2.jpg',
    location: 'Pakis, Malang',
    description: 'Toko pertanian terlengkap di Malang Raya',
    openDays: 'Senin - Sabtu',
    openTime: '08.00 - 15.00',
    product: [
      'Benih Kangkung',
      'Nutrisi Hidroponik AB Mix',
      'Benih Selada',
      'Benih Pakcoy',
      'Benih Cabai Rawit',
    ],
    price: [
      'Rp 8.000',
      'Rp 15.000',
      'Rp 8.000',
      'Rp 8.000',
      'Rp 10.000',
    ],
    photoProduct: [
      'images/product/benih-kangkung.jpg',
      'images/product/nutrisi-hidroponik-ab-mix.jpg',
      'images/product/benih-selada.jpg',
      'images/product/benih-pakcoy.jpg',
      'images/product/benih-cabai-rawit.jpg',
    ],
    productDesc: [
      'Benih Kangkung pilihan. Isi 100 biji benih',
      'Nutrisi cair AB Mix, bisa digunakan pada tanaman hidroponik atau media tanah',
      'Benih selada unggul merek pak untung. Isi 50 biji benih',
      'Benih Pakcoy berkualiatas. Isi 80 biji benih',
      'Benih Cabai Rawit merakyat. Isi 100 biji benih',
    ],
  ),
  Stores(
    name: 'Bedengan',
    storeId: '34562',
    profilePict: 'images/profil/profil3.jpg',
    location: 'Dau, Malang',
    description: 'Toko pertanian unggul di Malang Raya',
    openDays: 'Senin - Sabtu',
    openTime: '09.00 - 16.00',
    product: [
      'Benih Pakcoy',
      'Benih Cabai Rawit',
      'Benih Kangkung',
      'Nutrisi Hidroponik AB Mix',
      'Benih Selada',
    ],
    price: [
      'Rp 8.000',
      'Rp 10.000',
      'Rp 8.000',
      'Rp 15.000',
      'Rp 8.000',
    ],
    photoProduct: [
      'images/product/benih-pakcoy.jpg',
      'images/product/benih-cabai-rawit.jpg',
      'images/product/benih-kangkung.jpg',
      'images/product/nutrisi-hidroponik-ab-mix.jpg',
      'images/product/benih-selada.jpg',
    ],
    productDesc: [
      'Benih Pakcoy berkualiatas. Isi 80 biji benih',
      'Benih Cabai Rawit merakyat. Isi 100 biji benih',
      'Benih Kangkung pilihan. Isi 100 biji benih',
      'Nutrisi cair AB Mix, bisa digunakan pada tanaman hidroponik atau media tanah',
      'Benih selada unggul merek pak untung. Isi 50 biji benih',
    ],
  ),
  Stores(
    name: 'Teen Agriculture',
    storeId: '45627',
    profilePict: 'images/profil/profil4.jpg',
    location: 'Lowokwaru, Malang',
    description: 'Toko hidroponik terlengkap di Kota Malang',
    openDays: 'Senin - Sabtu',
    openTime: '09.00 - 16.00',
    product: [
      'Bak Hidroponik',
      'Net Pot Hidroponik',
      'Pupuk Nutrisi untuk Buah dan Sayur',
      'Nutrisi Hidroponik AB Mix',
      'Pupuk Cair Agritech',
      'Rockwool Hidroponik',
    ],
    price: [
      'Rp 10.000',
      'Rp 10.000',
      'Rp 2.000',
      'Rp 15.000',
      'Rp 18.000',
      'Rp 12.000',
    ],
    photoProduct: [
      'images/product/bak-hidroponik.jpg',
      'images/product/net-pot-hidroponik.jpg',
      'images/product/nutrisi-tanaman-cair.jpg',
      'images/product/nutrisi-hidroponik-ab-mix.jpg',
      'images/product/pupuk-cair-AGRITECH.jpg',
      'images/product/rockwool-hidroponik.jpg',
    ],
    productDesc: [
      'Bak media tanaman untuk tanaman hidroponik',
      'Net pot untuk menaruh media tanam tanaman pada bak hidroponik',
      'Pupuk nutrisi untuk tanaman sayur dan buah. Tinggal semprot',
      'Nutrisi cair AB Mix, bisa digunakan pada tanaman hidroponik atau media tanah',
      'Pupuk nutrisi tanaman cair merek Agritech',
      'Rockwool untuk media tanam tanaman hidroponik',
    ],
  ),
  Stores(
    name: 'Tani Makmur',
    storeId: '56279',
    profilePict: 'images/profil/profil5.jpg',
    location: 'Karangploso, Malang',
    description: 'Toko bibit terlengkap di Kabupaten Malang',
    openDays: 'Senin - Sabtu',
    openTime: '09.00 - 16.00',
    product: [
      'Benih cabe rawit',
      'Benih kangkung',
      'Benih pakcoy',
      'Benih rumput jepang',
      'Benih selada',
      'Benih seledri',
    ],
    price: [
      'Rp 8.000',
      'Rp 8.000',
      'Rp 8.000',
      'Rp 8.000',
      'Rp 8.000',
      'Rp 8.000',
    ],
    photoProduct: [
      'images/product/benih-cabai-rawit.jpg',
      'images/product/benih-kangkung.jpg',
      'images/product/benih-pakcoy.jpg',
      'images/product/benih-rumput-jepang.jpg',
      'images/product/benih-selada.jpg',
      'images/product/benih-seledri.jpg',
    ],
    productDesc: [
      'benih cabe rawit unggul, isi 100 biji benih siap tanam',
      'benih kangkung isi 100 biji benih siap tanam',
      'benih pakcoy merek tani makmur isi 50 biji benih siap tanam',
      'benih rumput jepang isi 1000 biji siap semai',
      'benih selada merek amiga isi 50 biji siap tanam',
      'benih seledri merek amigo isi 20 biji siap tanam',
    ],
  ),
];
