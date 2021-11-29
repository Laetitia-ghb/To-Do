import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.grey,
        ),
        actions: const [
          IconButton(onPressed: null, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: null, icon: const Icon(Icons.notifications_outlined)),
        ],
        backgroundColor: Colors.white,
        /*title: const Text('TO DO',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),*/
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 33),
            child: Text(
              "What's up Laeti!",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(34, 45, 87, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(33, 43, 0, 9),
            child: Text(
              'CATEGORIES',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(161, 167, 200, 1),
              ),
            ),
          ),
          Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.13,
              child: Card(
                color: Colors.blue[100],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '40 tasks',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(164, 169, 199, 1)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Business',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                    color: Colors.blue[100],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '18 tasks',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(164, 169, 199, 1)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Personal',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                        ])))
          ])
        ],
      ),

      // body: Container(alignment: Alignment.center,
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      // color: Colors.redAccent,
      // child: const Icon(Icons.electric_car, size: 50.0, color: Colors.deepPurple),
      // ),
      // const Center(
      //   child: Text('Akwaaba', style; TextStyle(fontsize; )
      // ))

      // body: Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
      //  children: const [
      //   CircleAvatar(
      //    radius: 50,
      //   backgroundImage: AssetImage(
      //   'assets/images/lady.jpg'),
      //    )],
      //   ),

      //body: ListView(children: const [
      //ListTitle(
      //Leading: CircleAvatar(
      //radius:30.0),
      //)]));

      /* body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const ListTile(
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/lady.jpg'),
              ),
              title: Text('Janie'),
              subtitle: Text('Hello there!'),
              trailing: Icon(Icons.favorite),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 1,
              indent: 70,
            );
          },
          itemCount: 20,*/
    );
  }
}
