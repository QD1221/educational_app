import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  ValueNotifier<int> _pageIndex = ValueNotifier(0);
  ValueNotifier<int> _subTabIndex = ValueNotifier(0);
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 0,
              top: 24,
              bottom: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDrawerOpen = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Icon(Icons.clear),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 84,
                    width: 84,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Quang Tran',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'qd@flutter.dev',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.person_outline),
                        ),
                        SizedBox(width: 16),
                        Text('My profile')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.bookmark_border),
                        ),
                        SizedBox(width: 16),
                        Text('My courses')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.share_outlined),
                        ),
                        SizedBox(width: 16),
                        Text('Invite friends')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.supervisor_account_outlined),
                        ),
                        SizedBox(width: 16),
                        Text('Helps & Support')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.settings_outlined),
                        ),
                        SizedBox(width: 16),
                        Text('Settings')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.info_outline),
                        ),
                        SizedBox(width: 16),
                        Text('About us')
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.pink,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AnimatedPositioned(
              left: isDrawerOpen ? 240 : 0,
              top: isDrawerOpen ? 120 : 0,
              right: isDrawerOpen ? -80 : 0,
              bottom: 0,
              duration: Duration(milliseconds: 250),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: IgnorePointer(
                  ignoring: isDrawerOpen ? true : false,
                  child: Container(
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Expanded(
                          flex: 20,
                          child: ValueListenableBuilder<int>(
                            valueListenable: _pageIndex,
                            builder: (BuildContext context, int value,
                                Widget? child) {
                              return IndexedStack(
                                index: value,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 0,
                                        bottom: 0,
                                        child: Transform.rotate(
                                          angle: isDrawerOpen ? -0.12 : 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: isDrawerOpen
                                                  ? Colors.white
                                                  : Colors.grey[200],
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8),
                                                    child: Row(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              isDrawerOpen =
                                                                  true;
                                                            });
                                                          },
                                                          icon:
                                                              Icon(Icons.menu),
                                                        ),
                                                        Spacer(),
                                                        IconButton(
                                                          onPressed: () {},
                                                          icon: Icon(
                                                              Icons.search),
                                                        ),
                                                        CircleAvatar(radius: 16)
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      height: 160,
                                                      decoration: BoxDecoration(
                                                        color: Colors.pink,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  16),
                                                          topRight:
                                                              Radius.circular(
                                                                  16),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  4),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  4),
                                                        ),
                                                      ),
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 84,
                                                            width: 120,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'What you want to\n learn today?',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        24),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .deepPurpleAccent,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          vertical:
                                                                              8,
                                                                          horizontal:
                                                                              16),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Start lesson',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(8, 8, 0, 8),
                                                    child: SizedBox(
                                                      height: 42,
                                                      child: ListView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              _subTabIndex
                                                                  .value = 0;
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 8),
                                                              child:
                                                                  ValueListenableBuilder(
                                                                valueListenable:
                                                                    _subTabIndex,
                                                                builder: (BuildContext
                                                                        context,
                                                                    int value,
                                                                    Widget?
                                                                        child) {
                                                                  return Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            12),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: value == 0
                                                                          ? Colors
                                                                              .pink
                                                                          : Colors
                                                                              .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'All topic',
                                                                        style:
                                                                            TextStyle(
                                                                          color: value == 0
                                                                              ? Colors.white
                                                                              : Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _subTabIndex
                                                                  .value = 1;
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 8),
                                                              child:
                                                                  ValueListenableBuilder(
                                                                valueListenable:
                                                                    _subTabIndex,
                                                                builder: (BuildContext
                                                                        context,
                                                                    value,
                                                                    Widget?
                                                                        child) {
                                                                  return Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            12),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: value == 1
                                                                          ? Colors
                                                                              .pink
                                                                          : Colors
                                                                              .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'UX/UI Design',
                                                                        style:
                                                                            TextStyle(
                                                                          color: value == 1
                                                                              ? Colors.white
                                                                              : Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _subTabIndex
                                                                  .value = 2;
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 8),
                                                              child:
                                                                  ValueListenableBuilder(
                                                                valueListenable:
                                                                    _subTabIndex,
                                                                builder: (BuildContext
                                                                        context,
                                                                    value,
                                                                    Widget?
                                                                        child) {
                                                                  return Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            12),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: value == 2
                                                                          ? Colors
                                                                              .pink
                                                                          : Colors
                                                                              .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'Web Development',
                                                                        style:
                                                                            TextStyle(
                                                                          color: value == 2
                                                                              ? Colors.white
                                                                              : Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              _subTabIndex
                                                                  .value = 3;
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 8),
                                                              child:
                                                                  ValueListenableBuilder(
                                                                valueListenable:
                                                                    _subTabIndex,
                                                                builder: (BuildContext
                                                                        context,
                                                                    value,
                                                                    Widget?
                                                                        child) {
                                                                  return Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            12),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: value == 3
                                                                          ? Colors
                                                                              .pink
                                                                          : Colors
                                                                              .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        'Flutter Development',
                                                                        style:
                                                                            TextStyle(
                                                                          color: value == 3
                                                                              ? Colors.white
                                                                              : Colors.black,
                                                                          fontSize:
                                                                              12,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  ValueListenableBuilder(
                                                    valueListenable:
                                                        _subTabIndex,
                                                    builder:
                                                        (BuildContext context,
                                                            int value,
                                                            Widget? child) {
                                                      return IndexedStack(
                                                        index: value,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    8, 8, 0, 8),
                                                            child: SizedBox(
                                                              height: 220,
                                                              child: ListView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                children: [
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width /
                                                                        1.3,
                                                                    child: Card(
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(8.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizedBox(
                                                                              height: 100,
                                                                              child: Center(
                                                                                child: Image.network(
                                                                                  'https://cdn.pixabay.com/photo/2021/01/29/08/09/doodles-5960094_960_720.jpg',
                                                                                  fit: BoxFit.fitWidth,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 8),
                                                                            Text(
                                                                              'Best Web Development Course',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                            Text(
                                                                              'for Beginners',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.access_time,
                                                                                  size: 12,
                                                                                ),
                                                                                SizedBox(width: 4),
                                                                                Text(
                                                                                  '2 hr 10 mins',
                                                                                  style: TextStyle(fontSize: 12),
                                                                                ),
                                                                                Spacer(),
                                                                                IconButton(
                                                                                  onPressed: () {},
                                                                                  icon: Icon(Icons.bookmark_border),
                                                                                  color: Colors.pink,
                                                                                ),
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width /
                                                                        1.3,
                                                                    child: Card(
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(8.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizedBox(
                                                                              height: 100,
                                                                              child: Center(
                                                                                child: Image.network(
                                                                                  'https://cdn.pixabay.com/photo/2021/01/29/08/09/doodles-5960094_960_720.jpg',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 8),
                                                                            Text(
                                                                              'Best Web Development Course',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                            Text(
                                                                              'for Beginners',
                                                                              style: TextStyle(fontSize: 12),
                                                                            ),
                                                                            Row(
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.access_time,
                                                                                  size: 12,
                                                                                ),
                                                                                SizedBox(width: 4),
                                                                                Text(
                                                                                  '2 hr 10 mins',
                                                                                  style: TextStyle(fontSize: 12),
                                                                                ),
                                                                                Spacer(),
                                                                                IconButton(
                                                                                  onPressed: () {},
                                                                                  icon: Icon(Icons.bookmark_border),
                                                                                  color: Colors.pink,
                                                                                ),
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    8, 8, 0, 8),
                                                            child: SizedBox(
                                                              height: 220,
                                                              child: Container(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Top Mentors for you',
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ),
                                                        Text(
                                                          'View all',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors.grey,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 100,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: ListView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 8),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  1.5,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          16),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          16),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          4),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          4),
                                                                ),
                                                              ),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          16,
                                                                      vertical:
                                                                          8),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 48,
                                                                    width: 48,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          200],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Quang Tran',
                                                                          style:
                                                                              TextStyle(fontWeight: FontWeight.bold),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                4),
                                                                        Text(
                                                                            'Flutter Dev'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Spacer(),
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_downward_outlined,
                                                                        color: Colors
                                                                            .pink,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              8),
                                                                      Icon(
                                                                        Icons
                                                                            .chat_outlined,
                                                                        color: Colors
                                                                            .pink,
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 8),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  1.5,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          16),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          16),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          4),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          4),
                                                                ),
                                                              ),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          16,
                                                                      vertical:
                                                                          8),
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 48,
                                                                    width: 48,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                              .grey[
                                                                          200],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Quang Tran',
                                                                          style:
                                                                              TextStyle(fontWeight: FontWeight.bold),
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                4),
                                                                        Text(
                                                                            'Flutter Dev'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Spacer(),
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .arrow_downward_outlined,
                                                                        color: Colors
                                                                            .pink,
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              8),
                                                                      Icon(
                                                                        Icons
                                                                            .chat_outlined,
                                                                        color: Colors
                                                                            .pink,
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Chat'),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Notification'),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text('Bookmark'),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 64,
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _pageIndex.value = 0;
                                    });
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _pageIndex,
                                    builder: (context, value, child) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: value == 0
                                                    ? Colors.pink
                                                    : Colors.transparent),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Icon(
                                              Icons.home_outlined,
                                              color: value == 0
                                                  ? Colors.pink
                                                  : Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Home',
                                            style: TextStyle(
                                              color: value == 0
                                                  ? Colors.pink
                                                  : Colors.transparent,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _pageIndex.value = 1;
                                    });
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _pageIndex,
                                    builder: (context, value, child) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: value == 1
                                                    ? Colors.pink
                                                    : Colors.transparent),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Icon(
                                              Icons.chat_outlined,
                                              color: value == 1
                                                  ? Colors.pink
                                                  : Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Message',
                                            style: TextStyle(
                                              color: value == 1
                                                  ? Colors.pink
                                                  : Colors.transparent,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _pageIndex.value = 2;
                                    });
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _pageIndex,
                                    builder: (context, value, child) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: value == 2
                                                    ? Colors.pink
                                                    : Colors.transparent),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Icon(
                                              Icons.notifications_outlined,
                                              color: value == 2
                                                  ? Colors.pink
                                                  : Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Notification',
                                            style: TextStyle(
                                              color: value == 2
                                                  ? Colors.pink
                                                  : Colors.transparent,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _pageIndex.value = 3;
                                    });
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _pageIndex,
                                    builder: (context, value, child) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 2,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: value == 3
                                                    ? Colors.pink
                                                    : Colors.transparent),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Icon(
                                              Icons.bookmark_outline,
                                              color: value == 3
                                                  ? Colors.pink
                                                  : Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            'Bookmark',
                                            style: TextStyle(
                                              color: value == 3
                                                  ? Colors.pink
                                                  : Colors.transparent,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
