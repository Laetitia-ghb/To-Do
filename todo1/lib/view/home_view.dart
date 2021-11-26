import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.amber,
          ),
          actions: const [
            IconButton(onPressed: null, icon: const Icon(Icons.notifications))
          ],
          backgroundColor: Colors.blue,
          title: const Text('TO DO',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 20.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
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

        body: ListView.separated(
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
          itemCount: 20,
        ));
  }
}
