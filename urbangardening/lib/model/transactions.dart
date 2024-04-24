class Transactions {
  String id;
  String date;
  String nameStore;
  String thumbnail;
  List<String> productName;
  List<String> productThumbnail;
  List<String> productKwantity;
  List<String> productPrice;
  List<String> sumPrice;
  String totalPayment;

  Transactions(
      {required this.id,
      required this.date,
      required this.nameStore,
      required this.thumbnail,
      required this.productName,
      required this.productThumbnail,
      required this.productKwantity,
      required this.productPrice,
      required this.sumPrice,
      required this.totalPayment});
}

var transactionList = [
  Transactions(
      id: '234567',
      date: '20 Desember 2023',
      nameStore: 'Teen Agriculture',
      thumbnail: 'images/product/bak-hidroponik.jpg',
      productName: [
        'Bak Hidroponik',
        'Net Pot Hidroponik',
        'Pupuk Nutrisi untuk Buah dan Sayur',
        'Nutrisi Hidroponik AB Mix',
        'Pupuk Cair Agritech',
        'Rockwool Hidroponik',
      ],
      productThumbnail: [
        'images/product/bak-hidroponik.jpg',
        'images/product/net-pot-hidroponik.jpg',
        'images/product/nutrisi-tanaman-cair.jpg',
        'images/product/nutrisi-hidroponik-ab-mix.jpg',
        'images/product/pupuk-cair-AGRITECH.jpg',
        'images/product/rockwool-hidroponik.jpg',
      ],
      productKwantity: [
        '2',
        '7',
        '3',
        '2',
        '5',
        '6',
      ],
      productPrice: [
        'Rp 10.000',
        'Rp 10.000',
        'Rp 2.000',
        'Rp 15.000',
        'Rp 18.000',
        'Rp 12.000',
      ],
      sumPrice: [
        'Rp 20.000',
        'Rp 70.000',
        'Rp 6.000',
        'Rp 30.000',
        'Rp 90.000',
        'Rp 72.000',
      ],
      totalPayment: 'Rp 572.000')
];
