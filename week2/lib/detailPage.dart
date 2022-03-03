import 'package:flutter/material.dart';
import 'package:demo3/bookData.dart';

class DetailPage extends StatefulWidget {
  @required
  final Book detail;
  const DetailPage({Key? key, required this.detail}) : super(key: key);

  @override
  _Detail_screenState createState() => _Detail_screenState(detail);
}

class _Detail_screenState extends State<DetailPage> {
  bool _isPressed = true;

  final Book detail;

  _Detail_screenState(this.detail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isPressed = !_isPressed;
                });
              },
              icon: (_isPressed == false)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 30,
                    ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.file_upload_outlined,
              size: 30,
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              BookDescriptionDetail(
                  text: detail.text,
                  authors: detail.authors,
                  description: detail.description,
                  image: detail.image)
            ],
          ),
        ));
  }
}

class BookDescriptionDetail extends StatelessWidget {
  final String text;
  final String authors;
  final String description;
  final String image;

  const BookDescriptionDetail(
      {Key? key,
      required this.text,
      required this.authors,
      required this.description,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/" + image,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          authors,
                          style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 200,
                            child: Row(
                              children: [
                                Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Fiction',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.blueAccent),
                                      ),
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.blueAccent),
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Literary',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.blueAccent),
                                      ),
                                    ))
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          height: 37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.download,
                                color: Colors.white,
                              ),
                              Text(
                                'Download Epub',
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Book Description',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue),
                  ),
                ),
                const Divider(
                  height: 20,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(description,
                    style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600)),
                const Padding(
                  padding: EdgeInsets.only(top: 18.0, left: 19),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'show less',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )));
  }
}