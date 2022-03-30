import 'package:flutter/material.dart';
import '../bookData.dart';
import '../detailPage.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 135,
                    child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.cover,
                      ),
                    
                  ),
              Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 135,
                      child: Image.asset('assets/images/2.jpg', fit: BoxFit.cover,),         
                  ),
              Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 135,
                    child: Image.asset(
                        'assets/images/3.jpg',
                        fit: BoxFit.cover,
                      ),
                  ),
              Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 135,
                    child: Image.asset(
                        'assets/images/4.jpg',
                        fit: BoxFit.cover,
                      ),
                  ),
              Container(
                    margin: const EdgeInsets.all(10),
                    height: 200,
                    width: 135,
                    child: Image.asset(
                        'assets/images/5.jpg',
                        fit: BoxFit.cover,
                      ),
                  ),
                
            ],
            ),
          ),
        Container(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),   
                ),
              ),
            ),
        SizedBox(
              height: 38,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    return Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Categories(
                            text: categories[i],
                            size: 15,
                          ),
                        ));
                  }),
            ),
          Container(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recently Added',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      
                    ),   
                ),
              ),
            ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              height: 280,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: Book.listbooks.length,
                itemBuilder: (context, i) => RecentUpdate(
                  detail: Book.listbooks[i],
                ),
              ),
            ),
        ],) ,
      )
      
      
    );
  }
}
List categories = [
  "Truyện dài",
  "Truyện ngắn",
  "Verison Tiếng Việt",
  "Version Tiếng Anh",
];

class Categories extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const Categories({
    Key? key,
    required this.text,
    required this.size,
    this.color = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size, fontWeight: FontWeight.normal),
    );
  }
}

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({Key? key, required this.detail}) : super(key: key);
  final Book detail;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: detail.id,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/' + detail.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text
                      SizedBox(
                        width: 180,
                        child: Text(
                          detail.text,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      //authors
                      SizedBox(
                        width: 150,
                        height: 30,
                        child: Text(
                          detail.authors,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blueAccent),
                        ),
                      ),
                      //decription
                      SizedBox(
                        width: 150,
                        height: 80,
                        child: Text(
                          detail.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
        
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(detail: detail),
        ),
      ),
    );
  }
}
