import 'package:flutter/material.dart';
import '../screens/GovernmentDetails.dart';
import '../widgets/GovernmentCard.dart';
import '../data/governmentsData.dart';

class Governments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Governments'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: governments.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Governmentdetails(
                                  government: governments[index],
                                )));
                  },
                  child: Governmentcard(
                      name: governments[index].name,
                      image: governments[index].imgUrl)),
            );
          }),
    );
  }
}