import 'package:flutter/material.dart';
import '../../../constants.dart';
import '/detail/components/description_page.dart';
import '/detail/components/more_info_page.dart';
import '/detail/components/reviews.dart';

class TabBarDetail extends StatefulWidget {
  const TabBarDetail({Key? key}) : super(key: key);

  @override
  _TabBarDetailState createState() => _TabBarDetailState();
}

class _TabBarDetailState extends State<TabBarDetail>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: selectedIndex, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                tabs: const [
                  Text('Description'),
                  Text('More info'),
                  Text('Reviews'),
                ],
                unselectedLabelColor: const Color(0xffacb3bf),
                indicatorColor: primaryColor,
                labelColor: primaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                isScrollable: false,
                labelPadding: const EdgeInsets.all(13),
                controller: _tabController,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                    _tabController.animateTo(index);
                  });
                },
              ),
            ),
          ),
          IndexedStack(
            children: <Widget>[
              Visibility(
                child: const DescriptionPage(),
                maintainState: true,
                visible: selectedIndex == 0,
              ),
              Visibility(
                child: const MoreInfo(),
                maintainState: true,
                visible: selectedIndex == 1,
              ),
              Visibility(
                child: const Review(),
                maintainState: true,
                visible: selectedIndex == 2,
              ),
            ],
            index: selectedIndex,
          ),
        ],
      ),
    );
  }
}
