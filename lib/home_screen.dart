import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Whats App',
              style: TextStyle(fontFamily: 'Sans'),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search_outlined),
              const SizedBox(width: 12),
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text('Settings'),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text('Notifications'),
                        ),
                      ]),
              const SizedBox(width: 12),
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                      child: ListTile(
                        title: Text('BSsc Aims Group'),
                        subtitle:
                            Text('no class today. regards Mis Madho Mala.'),
                        trailing: Text(
                          '12:23am',
                          style: TextStyle(color: Colors.teal),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1181359/pexels-photo-1181359.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 40,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0)
                        ?  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: ListTile(
                        title: const Text('Nimra'),
                        subtitle: const Text('28 minutes ago'),
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.teal,width: 2)
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                      ),
                    )
                        :  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: ListTile(
                        title: const Text('Ali'),
                        subtitle: const Text('just now'),
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.teal,width: 2)
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0)
                        ? const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: ListTile(
                              title: Text('Osama Brother'),
                              subtitle: Text('Osama. missed a called 2hr ago.'),
                              trailing: Icon(Icons.phone),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                          )
                        : const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: ListTile(
                              title: Text('Uzair aims'),
                              subtitle:
                                  Text('Uzair. missed a video called 13m ago.'),
                              trailing: Icon(Icons.video_call),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                          );
                  }),
            ],
          ),
        ));
  }
}
