import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'whatsApp Business ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'chats',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'status',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'call',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            actions: [
              Icon(Icons.search_rounded),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Text('Business tools'),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Text('new group'),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Text('New brodcast'),
                        ),
                        PopupMenuItem(
                          value: 4,
                          child: Text('Labels'),
                        ),
                        PopupMenuItem(
                          value: 5,
                          child: Text('Linked devices'),
                        ),
                        PopupMenuItem(
                          value: 6,
                          child: Text('starred messages'),
                        ),
                        PopupMenuItem(
                          value: 7,
                          child: Text('setting'),
                        ),
                      ]),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Text('camra'),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('image/jan.png')),
                        title: Text('menoo khan'),
                        subtitle: Text('oky'),
                        trailing: Text('6:00 pm'),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color(0xff46a094),
                                  width: 3,
                                )),
                            child: CircleAvatar(
                                backgroundImage: AssetImage('image/jan.png')),
                          ),
                          title: Text('menoo khan'),
                          subtitle: Text('16 minuts ago'),
                        );
                      } else {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New update'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xff46a094),
                                      width: 3,
                                    )),
                                child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('image/jan.png')),
                              ),
                              title: Text('menoo khan'),
                              subtitle: Text('16 minuts ago'),
                            ),
                          ],
                        );
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New update'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color(0xff46a094),
                                    width: 3,
                                  )),
                              child: CircleAvatar(
                                  backgroundImage: AssetImage('image/jan.png')),
                            ),
                            title: Text('menoo khan'),
                            subtitle: Text('16 minuts ago'),
                          ),
                        ],
                      );

                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff46a094),
                                width: 3,
                              )),
                          child: CircleAvatar(
                              backgroundImage: AssetImage('image/jan.png')),
                        ),
                        title: Text('menoo khan'),
                        subtitle: Text('16 minuts ago'),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('image/jan.png'),
                        ),
                        title: Text('menoo khan'),
                        subtitle: Text(index / 2 == 0
                            ? 'ypu have missed call'
                            : 'you have 11:00pm'),
                        trailing: Icon(
                            index / 2 == 0 ? Icons.call : Icons.video_call),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
