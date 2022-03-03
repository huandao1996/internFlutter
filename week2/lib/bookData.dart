class Book {
  final String id;
  final String text;
  final String authors;
  final String description;
  final String image;

  Book({
    required this.id,
    required this.text,
    required this.authors,
    required this.description,
    required this.image,
  });

  static List<Book> listbooks = [
    Book(
      id: '1',
      text: "Nobita du hành biển phương nam",
      authors: 'Fujiko F Fujio',
      description:
          'Nobita du hành biển phương nam.',
      image: '1.png',
    ),
    Book(
      id: '2',
      text: "Nobita vũ trụ phiêu lưu kí",
      authors: 'Fujiko F Fujio',
      description:
          'Nobita vũ trụ phiêu lưu kí.',
      image: '2.jpg',
    ),
    Book(
      id: '3',
      text: "Chú khủng long của Nobita",
      authors: 'Fujiko F Fujio',
      description:
          'Chú khủng long của Nobita.',
      image: '3.jpg',
    ),
    Book(
      id: '4',
      text: 'Nobita lacj vào xứ quỷ',
      authors: 'Fujiko F Fujio',
      description:
          'Nobita lacj vào xứ quỷ.',
      image: '4.jpg',
    ),
    Book(
      id: '5',
      text: 'Lâu đài dưới đáy biển',
      authors: 'Fujiko F Fujio',
      description:
          'Lâu đài dưới đáy biển.',
      image: '5.jpg',
    ),
  ];
}
